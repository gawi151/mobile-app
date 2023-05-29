# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.nbp.pl*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCenyzlotaDateGet**](DefaultApi.md#apicenyzlotadateget) | **GET** /api/cenyzlota/{date} | Get the gold price published on a given date
[**apiCenyzlotaGet**](DefaultApi.md#apicenyzlotaget) | **GET** /api/cenyzlota | Get the current gold price
[**apiCenyzlotaLastTopCountGet**](DefaultApi.md#apicenyzlotalasttopcountget) | **GET** /api/cenyzlota/last/{topCount} | Get the series of latest gold price quotations
[**apiCenyzlotaStartDateEndDateGet**](DefaultApi.md#apicenyzlotastartdateenddateget) | **GET** /api/cenyzlota/{startDate}/{endDate} | Get the series of gold prices published within a specified time range
[**apiCenyzlotaTodayGet**](DefaultApi.md#apicenyzlotatodayget) | **GET** /api/cenyzlota/today | Get the gold price published today
[**apiExchangeratesRatesTableCodeDateGet**](DefaultApi.md#apiexchangeratesratestablecodedateget) | **GET** /api/exchangerates/rates/{table}/{code}/{date} | Get the exchange rate of a specific currency from a particular table type published on a given date
[**apiExchangeratesRatesTableCodeGet**](DefaultApi.md#apiexchangeratesratestablecodeget) | **GET** /api/exchangerates/rates/{table}/{code}/ | Get the current exchange rate of a specific currency from a particular table type
[**apiExchangeratesRatesTableCodeLastTopCountGet**](DefaultApi.md#apiexchangeratesratestablecodelasttopcountget) | **GET** /api/exchangerates/rates/{table}/{code}/last/{topCount} | Get the series of latest exchange rates of a specific currency from a particular table type
[**apiExchangeratesRatesTableCodeStartDateEndDateGet**](DefaultApi.md#apiexchangeratesratestablecodestartdateenddateget) | **GET** /api/exchangerates/rates/{table}/{code}/{startDate}/{endDate} | Get the exchange rate of a specific currency from a particular table type published within a specified time range
[**apiExchangeratesRatesTableCodeTodayGet**](DefaultApi.md#apiexchangeratesratestablecodetodayget) | **GET** /api/exchangerates/rates/{table}/{code}/today | Get the exchange rate of a specific currency from a particular table type published today
[**apiExchangeratesTablesTableDateGet**](DefaultApi.md#apiexchangeratestablestabledateget) | **GET** /api/exchangerates/tables/{table}/{date} | Get the exchange rate table of a specific type published on a given date
[**apiExchangeratesTablesTableGet**](DefaultApi.md#apiexchangeratestablestableget) | **GET** /api/exchangerates/tables/{table} | Get the current table of exchange rates of a specific type
[**apiExchangeratesTablesTableLastTopCountGet**](DefaultApi.md#apiexchangeratestablestablelasttopcountget) | **GET** /api/exchangerates/tables/{table}/last/{topCount} | Get the series of latest exchange rate tables of a specific type
[**apiExchangeratesTablesTableStartDateEndDateGet**](DefaultApi.md#apiexchangeratestablestablestartdateenddateget) | **GET** /api/exchangerates/tables/{table}/{startDate}/{endDate} | Get a series of exchange rate tables of a specific type published within a time bracket
[**apiExchangeratesTablesTableTodayGet**](DefaultApi.md#apiexchangeratestablestabletodayget) | **GET** /api/exchangerates/tables/{table}/today | Get the exchange rate table of a specific type published today


# **apiCenyzlotaDateGet**
> GoldPrice apiCenyzlotaDateGet(date)

Get the gold price published on a given date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final date = 2013-10-20; // DateTime | Date in the YYYY-MM-DD format (ISO 8601 standard)

try {
    final result = api_instance.apiCenyzlotaDateGet(date);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiCenyzlotaDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| Date in the YYYY-MM-DD format (ISO 8601 standard) | 

### Return type

[**GoldPrice**](GoldPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCenyzlotaGet**
> GoldPrice apiCenyzlotaGet()

Get the current gold price

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.apiCenyzlotaGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiCenyzlotaGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GoldPrice**](GoldPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCenyzlotaLastTopCountGet**
> List<GoldPrice> apiCenyzlotaLastTopCountGet(topCount)

Get the series of latest gold price quotations

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final topCount = 56; // int | Number determining the maximum size of the returned data series

try {
    final result = api_instance.apiCenyzlotaLastTopCountGet(topCount);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiCenyzlotaLastTopCountGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topCount** | **int**| Number determining the maximum size of the returned data series | 

### Return type

[**List<GoldPrice>**](GoldPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCenyzlotaStartDateEndDateGet**
> List<GoldPrice> apiCenyzlotaStartDateEndDateGet(startDate, endDate)

Get the series of gold prices published within a specified time range

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final startDate = 2013-10-20; // DateTime | Start date in the YYYY-MM-DD format
final endDate = 2013-10-20; // DateTime | End date in the YYYY-MM-DD format

try {
    final result = api_instance.apiCenyzlotaStartDateEndDateGet(startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiCenyzlotaStartDateEndDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date in the YYYY-MM-DD format | 
 **endDate** | **DateTime**| End date in the YYYY-MM-DD format | 

### Return type

[**List<GoldPrice>**](GoldPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCenyzlotaTodayGet**
> GoldPrice apiCenyzlotaTodayGet()

Get the gold price published today

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.apiCenyzlotaTodayGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiCenyzlotaTodayGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GoldPrice**](GoldPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesRatesTableCodeDateGet**
> CurrencyExchangeRates apiExchangeratesRatesTableCodeDateGet(table, code, date)

Get the exchange rate of a specific currency from a particular table type published on a given date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final code = code_example; // String | Three-letter currency code (ISO 4217 standard)
final date = 2013-10-20; // DateTime | Date in the YYYY-MM-DD format (ISO 8601 standard)

try {
    final result = api_instance.apiExchangeratesRatesTableCodeDateGet(table, code, date);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesRatesTableCodeDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **code** | **String**| Three-letter currency code (ISO 4217 standard) | 
 **date** | **DateTime**| Date in the YYYY-MM-DD format (ISO 8601 standard) | 

### Return type

[**CurrencyExchangeRates**](CurrencyExchangeRates.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesRatesTableCodeGet**
> ExchangeRateTable apiExchangeratesRatesTableCodeGet(table, code)

Get the current exchange rate of a specific currency from a particular table type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final code = code_example; // String | Three-letter currency code (ISO 4217 standard)

try {
    final result = api_instance.apiExchangeratesRatesTableCodeGet(table, code);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesRatesTableCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **code** | **String**| Three-letter currency code (ISO 4217 standard) | 

### Return type

[**ExchangeRateTable**](ExchangeRateTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesRatesTableCodeLastTopCountGet**
> List<CurrencyExchangeRates> apiExchangeratesRatesTableCodeLastTopCountGet(table, code, topCount)

Get the series of latest exchange rates of a specific currency from a particular table type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final code = code_example; // String | Three-letter currency code (ISO 4217 standard)
final topCount = 56; // int | Number determining the maximum size of the returned data series

try {
    final result = api_instance.apiExchangeratesRatesTableCodeLastTopCountGet(table, code, topCount);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesRatesTableCodeLastTopCountGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **code** | **String**| Three-letter currency code (ISO 4217 standard) | 
 **topCount** | **int**| Number determining the maximum size of the returned data series | 

### Return type

[**List<CurrencyExchangeRates>**](CurrencyExchangeRates.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesRatesTableCodeStartDateEndDateGet**
> List<CurrencyExchangeRates> apiExchangeratesRatesTableCodeStartDateEndDateGet(table, code, startDate, endDate)

Get the exchange rate of a specific currency from a particular table type published within a specified time range

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final code = code_example; // String | Three-letter currency code (ISO 4217 standard)
final startDate = 2013-10-20; // DateTime | Start date in the YYYY-MM-DD format
final endDate = 2013-10-20; // DateTime | End date in the YYYY-MM-DD format

try {
    final result = api_instance.apiExchangeratesRatesTableCodeStartDateEndDateGet(table, code, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesRatesTableCodeStartDateEndDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **code** | **String**| Three-letter currency code (ISO 4217 standard) | 
 **startDate** | **DateTime**| Start date in the YYYY-MM-DD format | 
 **endDate** | **DateTime**| End date in the YYYY-MM-DD format | 

### Return type

[**List<CurrencyExchangeRates>**](CurrencyExchangeRates.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesRatesTableCodeTodayGet**
> CurrencyExchangeRates apiExchangeratesRatesTableCodeTodayGet(table, code)

Get the exchange rate of a specific currency from a particular table type published today

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final code = code_example; // String | Three-letter currency code (ISO 4217 standard)

try {
    final result = api_instance.apiExchangeratesRatesTableCodeTodayGet(table, code);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesRatesTableCodeTodayGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **code** | **String**| Three-letter currency code (ISO 4217 standard) | 

### Return type

[**CurrencyExchangeRates**](CurrencyExchangeRates.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesTablesTableDateGet**
> ExchangeRateTable apiExchangeratesTablesTableDateGet(table, date)

Get the exchange rate table of a specific type published on a given date

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final date = 2013-10-20; // DateTime | Date in the YYYY-MM-DD format

try {
    final result = api_instance.apiExchangeratesTablesTableDateGet(table, date);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesTablesTableDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **date** | **DateTime**| Date in the YYYY-MM-DD format | 

### Return type

[**ExchangeRateTable**](ExchangeRateTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesTablesTableGet**
> List<ExchangeRateTable> apiExchangeratesTablesTableGet(table)

Get the current table of exchange rates of a specific type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)

try {
    final result = api_instance.apiExchangeratesTablesTableGet(table);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesTablesTableGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 

### Return type

[**List<ExchangeRateTable>**](ExchangeRateTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesTablesTableLastTopCountGet**
> List<ExchangeRateTable> apiExchangeratesTablesTableLastTopCountGet(table, topCount)

Get the series of latest exchange rate tables of a specific type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final topCount = 56; // int | Number determining the maximum size of the returned data series

try {
    final result = api_instance.apiExchangeratesTablesTableLastTopCountGet(table, topCount);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesTablesTableLastTopCountGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **topCount** | **int**| Number determining the maximum size of the returned data series | 

### Return type

[**List<ExchangeRateTable>**](ExchangeRateTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesTablesTableStartDateEndDateGet**
> List<ExchangeRateTable> apiExchangeratesTablesTableStartDateEndDateGet(table, startDate, endDate)

Get a series of exchange rate tables of a specific type published within a time bracket

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)
final startDate = 2013-10-20; // DateTime | Start date in the YYYY-MM-DD format
final endDate = 2013-10-20; // DateTime | End date in the YYYY-MM-DD format

try {
    final result = api_instance.apiExchangeratesTablesTableStartDateEndDateGet(table, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesTablesTableStartDateEndDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 
 **startDate** | **DateTime**| Start date in the YYYY-MM-DD format | 
 **endDate** | **DateTime**| End date in the YYYY-MM-DD format | 

### Return type

[**List<ExchangeRateTable>**](ExchangeRateTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiExchangeratesTablesTableTodayGet**
> ExchangeRateTable apiExchangeratesTablesTableTodayGet(table)

Get the exchange rate table of a specific type published today

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final table = table_example; // String | Table type (A, B, or C)

try {
    final result = api_instance.apiExchangeratesTablesTableTodayGet(table);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->apiExchangeratesTablesTableTodayGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table type (A, B, or C) | 

### Return type

[**ExchangeRateTable**](ExchangeRateTable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

