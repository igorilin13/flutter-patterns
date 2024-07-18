import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class ResponseItem with _$ResponseItem {
  factory ResponseItem({
    required String id,
    required String name,
  }) = _ResponseItem;

  factory ResponseItem.fromJson(Map<String, dynamic> json) =>
      _$ResponseItemFromJson(json);
}

@freezed
class AddItemRequest with _$AddItemRequest {
  factory AddItemRequest({
    required String name,
  }) = _AddItemRequest;

  factory AddItemRequest.fromJson(Map<String, dynamic> json) =>
      _$AddItemRequestFromJson(json);
}
