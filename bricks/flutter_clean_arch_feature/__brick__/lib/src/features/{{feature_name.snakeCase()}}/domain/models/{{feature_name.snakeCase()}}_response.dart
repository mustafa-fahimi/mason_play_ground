import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name.snakeCase()}}_response.g.dart';

@JsonSerializable(createToJson: false)
class {{feature_name.pascalCase()}}Response {
  {{feature_name.pascalCase()}}Response({
    required this.id,
    required this.secondItem,
  });

  factory {{feature_name.pascalCase()}}Response.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}ResponseFromJson(json);

  final int id;

  @JsonKey(name: 'second_item')
  final String secondItem;

  {{feature_name.pascalCase()}}Response copyWith({
    int? id,
    String? secondItem,
  }) {
    return {{feature_name.pascalCase()}}Response(
      id: id ?? this.id,
      secondItem: secondItem ?? this.secondItem,
    );
  }
}
