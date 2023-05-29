//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExchangeRateTableRatesInner {
  /// Returns a new [ExchangeRateTableRatesInner] instance.
  ExchangeRateTableRatesInner({
    this.currency,
    this.code,
    this.mid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExchangeRateTableRatesInner &&
     other.currency == currency &&
     other.code == code &&
     other.mid == mid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (mid == null ? 0 : mid!.hashCode);

  @override
  String toString() => 'ExchangeRateTableRatesInner[currency=$currency, code=$code, mid=$mid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.mid != null) {
      json[r'mid'] = this.mid;
    } else {
      json[r'mid'] = null;
    }
    return json;
  }

  /// Returns a new [ExchangeRateTableRatesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExchangeRateTableRatesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExchangeRateTableRatesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExchangeRateTableRatesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExchangeRateTableRatesInner(
        currency: mapValueOfType<String>(json, r'currency'),
        code: mapValueOfType<String>(json, r'code'),
        mid: json[r'mid'] == null
            ? null
            : num.parse(json[r'mid'].toString()),
      );
    }
    return null;
  }

  static List<ExchangeRateTableRatesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExchangeRateTableRatesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExchangeRateTableRatesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExchangeRateTableRatesInner> mapFromJson(dynamic json) {
    final map = <String, ExchangeRateTableRatesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExchangeRateTableRatesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExchangeRateTableRatesInner-objects as value to a dart map
  static Map<String, List<ExchangeRateTableRatesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExchangeRateTableRatesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExchangeRateTableRatesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

