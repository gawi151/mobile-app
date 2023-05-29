//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CurrencyExchangeRatesRatesInner {
  /// Returns a new [CurrencyExchangeRatesRatesInner] instance.
  CurrencyExchangeRatesRatesInner({
    this.false_,
    this.effectiveDate,
    this.mid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? false_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? effectiveDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurrencyExchangeRatesRatesInner &&
     other.false_ == false_ &&
     other.effectiveDate == effectiveDate &&
     other.mid == mid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (false_ == null ? 0 : false_!.hashCode) +
    (effectiveDate == null ? 0 : effectiveDate!.hashCode) +
    (mid == null ? 0 : mid!.hashCode);

  @override
  String toString() => 'CurrencyExchangeRatesRatesInner[false_=$false_, effectiveDate=$effectiveDate, mid=$mid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.false_ != null) {
      json[r'false'] = this.false_;
    } else {
      json[r'false'] = null;
    }
    if (this.effectiveDate != null) {
      json[r'effectiveDate'] = this.effectiveDate;
    } else {
      json[r'effectiveDate'] = null;
    }
    if (this.mid != null) {
      json[r'mid'] = this.mid;
    } else {
      json[r'mid'] = null;
    }
    return json;
  }

  /// Returns a new [CurrencyExchangeRatesRatesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurrencyExchangeRatesRatesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurrencyExchangeRatesRatesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurrencyExchangeRatesRatesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurrencyExchangeRatesRatesInner(
        false_: mapValueOfType<String>(json, r'false'),
        effectiveDate: mapValueOfType<String>(json, r'effectiveDate'),
        mid: json[r'mid'] == null
            ? null
            : num.parse(json[r'mid'].toString()),
      );
    }
    return null;
  }

  static List<CurrencyExchangeRatesRatesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurrencyExchangeRatesRatesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurrencyExchangeRatesRatesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurrencyExchangeRatesRatesInner> mapFromJson(dynamic json) {
    final map = <String, CurrencyExchangeRatesRatesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurrencyExchangeRatesRatesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurrencyExchangeRatesRatesInner-objects as value to a dart map
  static Map<String, List<CurrencyExchangeRatesRatesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurrencyExchangeRatesRatesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurrencyExchangeRatesRatesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

