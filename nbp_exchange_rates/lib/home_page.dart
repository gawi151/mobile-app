import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/api.dart';

import 'theme/theme.dart';

final exchangeRatesProvider = FutureProvider<List<ExchangeRateTable>?>(
  (ref) async => DefaultApi().apiExchangeratesTablesTableGet('A'),
);

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratesResult = ref.watch(exchangeRatesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('NBP exchange rates'),
        actions: const [
          ThemeSwitcher(),
        ],
      ),
      body: ratesResult.map(
        data: (data) => HomeContentBody(data: data),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        error: (_) => const Center(child: Text('error')),
      ),
    );
  }
}

class HomeContentBody extends HookConsumerWidget {
  const HomeContentBody({
    super.key,
    required this.data,
  });

  final AsyncData<List<ExchangeRateTable>?> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTextController = useTextEditingController();
    final searchQuery = useState('');
    searchTextController.addListener(() {
      debugPrint('searchTextController: ${searchTextController.text}');
      searchQuery.value = searchTextController.text;
    });
    final table = data.value?.first;
    if (table == null) {
      return const Center(child: Text('No data found'));
    }
    final rates = table.rates.where((element) {
      return _filterByQuery(queryComponents(searchQuery.value), element);
    }).toList();
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SearchBar(
            hintText: 'Find currency',
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            controller: searchTextController,
          ),
        ),
        const RatesListHeader(),
        Expanded(
          child: RatesListView(rates: rates),
        )
      ],
    );
  }
}

class RatesListHeader extends StatelessWidget {
  const RatesListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      dense: true,
      title: Text('Currency'),
      trailing: Text('Rate of exchange (PLN)'),
    );
  }
}

class RatesListView extends StatelessWidget {
  const RatesListView({
    super.key,
    required this.rates,
  });

  final List<ExchangeRateTableRatesInner> rates;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final rate = rates[index];
        return ListTile(
          title: Text(rate.currency ?? 'no currency'),
          subtitle: rate.code != null ? Text(rate.code!) : null,
          trailing: Chip(label: Text('${rate.mid ?? '-'}')),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: rates.length,
    );
  }
}

class CurrencyRateSearchDelegate extends SearchDelegate {
  final List<ExchangeRateTableRatesInner> rates;

  CurrencyRateSearchDelegate(this.rates)
      : super(searchFieldLabel: 'Search currency');

  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const CloseButton();
  }

  @override
  Widget buildResults(BuildContext context) {
    final queryComponents = this.queryComponents;
    return RatesListView(
        rates: rates
            .where((rate) => _filterByQuery(queryComponents, rate))
            .toList());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final queryComponents = this.queryComponents;
    return RatesListView(
        rates: rates
            .where((rate) => _filterByQuery(queryComponents, rate))
            .toList());
  }

  List<String> get queryComponents =>
      query.split(' ').map((e) => e.toLowerCase()).toList();
}

List<String> queryComponents(String query) =>
    query.split(' ').map((e) => e.toLowerCase()).toList();

bool _filterByQuery(
  List<String> queryComponents,
  ExchangeRateTableRatesInner rate,
) {
  final code = queryComponents
      .every((query) => rate.code?.toLowerCase().contains(query) == true);
  final currency = queryComponents
      .every((query) => rate.currency?.toLowerCase().contains(query) == true);

  return code || currency;
}
