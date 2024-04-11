import 'package:freezed_annotation/freezed_annotation.dart';

part 'uc_task_exception.freezed.dart';
part 'uc_task_exception.g.dart';

/// Custom exception class with predefined useful constructors.
@freezed
class UCTaskException with _$UCTaskException {
  const factory UCTaskException.auth([
    @Default(
      'Problem with authentication service. Please try again later, or contact support.',
    )
    String message,
  ]) = _Auth;

  const factory UCTaskException.channels([
    @Default(
      'Problem with fetching channel data. Please try again later, or contact support.',
    )
    String message,
  ]) = _Channels;

  const factory UCTaskException.customMessage({required String message}) =
      _CustomMessage;

  factory UCTaskException.fromJson(Map<String, dynamic> json) =>
      _$UCTaskExceptionFromJson(json);
}
