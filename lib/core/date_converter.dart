import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DateConverter implements JsonConverter<DateTime?, String> {
  const DateConverter();
  @override
  DateTime? fromJson(String value) {
    if (value == 'null') {
      return null;
    }
    return DateTime.parse(value);
  }

  @override
  String toJson(DateTime? object) {
    if (object == null) return 'null';
    final inputFormat = DateFormat('yyyy-MM-dd');
    return inputFormat.format(object);
  }
}
