//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the gold price published on a given date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   Date in the YYYY-MM-DD format (ISO 8601 standard)
  Future<Response> apiCenyzlotaDateGetWithHttpInfo(DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/cenyzlota/{date}'
      .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the gold price published on a given date
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   Date in the YYYY-MM-DD format (ISO 8601 standard)
  Future<GoldPrice?> apiCenyzlotaDateGet(DateTime date,) async {
    final response = await apiCenyzlotaDateGetWithHttpInfo(date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GoldPrice',) as GoldPrice;
    
    }
    return null;
  }

  /// Get the current gold price
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiCenyzlotaGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/cenyzlota';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the current gold price
  Future<GoldPrice?> apiCenyzlotaGet() async {
    final response = await apiCenyzlotaGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GoldPrice',) as GoldPrice;
    
    }
    return null;
  }

  /// Get the series of latest gold price quotations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] topCount (required):
  ///   Number determining the maximum size of the returned data series
  Future<Response> apiCenyzlotaLastTopCountGetWithHttpInfo(int topCount,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/cenyzlota/last/{topCount}'
      .replaceAll('{topCount}', topCount.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the series of latest gold price quotations
  ///
  /// Parameters:
  ///
  /// * [int] topCount (required):
  ///   Number determining the maximum size of the returned data series
  Future<List<GoldPrice>?> apiCenyzlotaLastTopCountGet(int topCount,) async {
    final response = await apiCenyzlotaLastTopCountGetWithHttpInfo(topCount,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GoldPrice>') as List)
        .cast<GoldPrice>()
        .toList();

    }
    return null;
  }

  /// Get the series of gold prices published within a specified time range
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] startDate (required):
  ///   Start date in the YYYY-MM-DD format
  ///
  /// * [DateTime] endDate (required):
  ///   End date in the YYYY-MM-DD format
  Future<Response> apiCenyzlotaStartDateEndDateGetWithHttpInfo(DateTime startDate, DateTime endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/cenyzlota/{startDate}/{endDate}'
      .replaceAll('{startDate}', startDate.toString())
      .replaceAll('{endDate}', endDate.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the series of gold prices published within a specified time range
  ///
  /// Parameters:
  ///
  /// * [DateTime] startDate (required):
  ///   Start date in the YYYY-MM-DD format
  ///
  /// * [DateTime] endDate (required):
  ///   End date in the YYYY-MM-DD format
  Future<List<GoldPrice>?> apiCenyzlotaStartDateEndDateGet(DateTime startDate, DateTime endDate,) async {
    final response = await apiCenyzlotaStartDateEndDateGetWithHttpInfo(startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GoldPrice>') as List)
        .cast<GoldPrice>()
        .toList();

    }
    return null;
  }

  /// Get the gold price published today
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiCenyzlotaTodayGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/cenyzlota/today';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the gold price published today
  Future<GoldPrice?> apiCenyzlotaTodayGet() async {
    final response = await apiCenyzlotaTodayGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GoldPrice',) as GoldPrice;
    
    }
    return null;
  }

  /// Get the exchange rate of a specific currency from a particular table type published on a given date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  ///
  /// * [DateTime] date (required):
  ///   Date in the YYYY-MM-DD format (ISO 8601 standard)
  Future<Response> apiExchangeratesRatesTableCodeDateGetWithHttpInfo(String table, String code, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/rates/{table}/{code}/{date}'
      .replaceAll('{table}', table)
      .replaceAll('{code}', code)
      .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the exchange rate of a specific currency from a particular table type published on a given date
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  ///
  /// * [DateTime] date (required):
  ///   Date in the YYYY-MM-DD format (ISO 8601 standard)
  Future<CurrencyExchangeRates?> apiExchangeratesRatesTableCodeDateGet(String table, String code, DateTime date,) async {
    final response = await apiExchangeratesRatesTableCodeDateGetWithHttpInfo(table, code, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CurrencyExchangeRates',) as CurrencyExchangeRates;
    
    }
    return null;
  }

  /// Get the current exchange rate of a specific currency from a particular table type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  Future<Response> apiExchangeratesRatesTableCodeGetWithHttpInfo(String table, String code,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/rates/{table}/{code}/'
      .replaceAll('{table}', table)
      .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the current exchange rate of a specific currency from a particular table type
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  Future<ExchangeRateTable?> apiExchangeratesRatesTableCodeGet(String table, String code,) async {
    final response = await apiExchangeratesRatesTableCodeGetWithHttpInfo(table, code,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExchangeRateTable',) as ExchangeRateTable;
    
    }
    return null;
  }

  /// Get the series of latest exchange rates of a specific currency from a particular table type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  ///
  /// * [int] topCount (required):
  ///   Number determining the maximum size of the returned data series
  Future<Response> apiExchangeratesRatesTableCodeLastTopCountGetWithHttpInfo(String table, String code, int topCount,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/rates/{table}/{code}/last/{topCount}'
      .replaceAll('{table}', table)
      .replaceAll('{code}', code)
      .replaceAll('{topCount}', topCount.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the series of latest exchange rates of a specific currency from a particular table type
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  ///
  /// * [int] topCount (required):
  ///   Number determining the maximum size of the returned data series
  Future<List<CurrencyExchangeRates>?> apiExchangeratesRatesTableCodeLastTopCountGet(String table, String code, int topCount,) async {
    final response = await apiExchangeratesRatesTableCodeLastTopCountGetWithHttpInfo(table, code, topCount,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CurrencyExchangeRates>') as List)
        .cast<CurrencyExchangeRates>()
        .toList();

    }
    return null;
  }

  /// Get the exchange rate of a specific currency from a particular table type published within a specified time range
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  ///
  /// * [DateTime] startDate (required):
  ///   Start date in the YYYY-MM-DD format
  ///
  /// * [DateTime] endDate (required):
  ///   End date in the YYYY-MM-DD format
  Future<Response> apiExchangeratesRatesTableCodeStartDateEndDateGetWithHttpInfo(String table, String code, DateTime startDate, DateTime endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/rates/{table}/{code}/{startDate}/{endDate}'
      .replaceAll('{table}', table)
      .replaceAll('{code}', code)
      .replaceAll('{startDate}', startDate.toString())
      .replaceAll('{endDate}', endDate.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the exchange rate of a specific currency from a particular table type published within a specified time range
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  ///
  /// * [DateTime] startDate (required):
  ///   Start date in the YYYY-MM-DD format
  ///
  /// * [DateTime] endDate (required):
  ///   End date in the YYYY-MM-DD format
  Future<List<CurrencyExchangeRates>?> apiExchangeratesRatesTableCodeStartDateEndDateGet(String table, String code, DateTime startDate, DateTime endDate,) async {
    final response = await apiExchangeratesRatesTableCodeStartDateEndDateGetWithHttpInfo(table, code, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CurrencyExchangeRates>') as List)
        .cast<CurrencyExchangeRates>()
        .toList();

    }
    return null;
  }

  /// Get the exchange rate of a specific currency from a particular table type published today
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  Future<Response> apiExchangeratesRatesTableCodeTodayGetWithHttpInfo(String table, String code,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/rates/{table}/{code}/today'
      .replaceAll('{table}', table)
      .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the exchange rate of a specific currency from a particular table type published today
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [String] code (required):
  ///   Three-letter currency code (ISO 4217 standard)
  Future<CurrencyExchangeRates?> apiExchangeratesRatesTableCodeTodayGet(String table, String code,) async {
    final response = await apiExchangeratesRatesTableCodeTodayGetWithHttpInfo(table, code,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CurrencyExchangeRates',) as CurrencyExchangeRates;
    
    }
    return null;
  }

  /// Get the exchange rate table of a specific type published on a given date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [DateTime] date (required):
  ///   Date in the YYYY-MM-DD format
  Future<Response> apiExchangeratesTablesTableDateGetWithHttpInfo(String table, DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/tables/{table}/{date}'
      .replaceAll('{table}', table)
      .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the exchange rate table of a specific type published on a given date
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [DateTime] date (required):
  ///   Date in the YYYY-MM-DD format
  Future<ExchangeRateTable?> apiExchangeratesTablesTableDateGet(String table, DateTime date,) async {
    final response = await apiExchangeratesTablesTableDateGetWithHttpInfo(table, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExchangeRateTable',) as ExchangeRateTable;
    
    }
    return null;
  }

  /// Get the current table of exchange rates of a specific type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  Future<Response> apiExchangeratesTablesTableGetWithHttpInfo(String table,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/tables/{table}'
      .replaceAll('{table}', table);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the current table of exchange rates of a specific type
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  Future<List<ExchangeRateTable>?> apiExchangeratesTablesTableGet(String table,) async {
    final response = await apiExchangeratesTablesTableGetWithHttpInfo(table,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExchangeRateTable>') as List)
        .cast<ExchangeRateTable>()
        .toList();

    }
    return null;
  }

  /// Get the series of latest exchange rate tables of a specific type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [int] topCount (required):
  ///   Number determining the maximum size of the returned data series
  Future<Response> apiExchangeratesTablesTableLastTopCountGetWithHttpInfo(String table, int topCount,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/tables/{table}/last/{topCount}'
      .replaceAll('{table}', table)
      .replaceAll('{topCount}', topCount.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the series of latest exchange rate tables of a specific type
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [int] topCount (required):
  ///   Number determining the maximum size of the returned data series
  Future<List<ExchangeRateTable>?> apiExchangeratesTablesTableLastTopCountGet(String table, int topCount,) async {
    final response = await apiExchangeratesTablesTableLastTopCountGetWithHttpInfo(table, topCount,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExchangeRateTable>') as List)
        .cast<ExchangeRateTable>()
        .toList();

    }
    return null;
  }

  /// Get a series of exchange rate tables of a specific type published within a time bracket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [DateTime] startDate (required):
  ///   Start date in the YYYY-MM-DD format
  ///
  /// * [DateTime] endDate (required):
  ///   End date in the YYYY-MM-DD format
  Future<Response> apiExchangeratesTablesTableStartDateEndDateGetWithHttpInfo(String table, DateTime startDate, DateTime endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/tables/{table}/{startDate}/{endDate}'
      .replaceAll('{table}', table)
      .replaceAll('{startDate}', startDate.toString())
      .replaceAll('{endDate}', endDate.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a series of exchange rate tables of a specific type published within a time bracket
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  ///
  /// * [DateTime] startDate (required):
  ///   Start date in the YYYY-MM-DD format
  ///
  /// * [DateTime] endDate (required):
  ///   End date in the YYYY-MM-DD format
  Future<List<ExchangeRateTable>?> apiExchangeratesTablesTableStartDateEndDateGet(String table, DateTime startDate, DateTime endDate,) async {
    final response = await apiExchangeratesTablesTableStartDateEndDateGetWithHttpInfo(table, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExchangeRateTable>') as List)
        .cast<ExchangeRateTable>()
        .toList();

    }
    return null;
  }

  /// Get the exchange rate table of a specific type published today
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  Future<Response> apiExchangeratesTablesTableTodayGetWithHttpInfo(String table,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/exchangerates/tables/{table}/today'
      .replaceAll('{table}', table);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the exchange rate table of a specific type published today
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   Table type (A, B, or C)
  Future<ExchangeRateTable?> apiExchangeratesTablesTableTodayGet(String table,) async {
    final response = await apiExchangeratesTablesTableTodayGetWithHttpInfo(table,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExchangeRateTable',) as ExchangeRateTable;
    
    }
    return null;
  }
}
