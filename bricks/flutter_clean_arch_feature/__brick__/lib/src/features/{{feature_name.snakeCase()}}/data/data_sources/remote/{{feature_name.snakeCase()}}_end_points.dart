import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name.snakeCase()}}_end_points.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}Endpoints with _${{feature_name.pascalCase()}}Endpoints {
  const factory {{feature_name.pascalCase()}}Endpoints.get{{feature_name.pascalCase()}}() = _Get{{feature_name.pascalCase()}};
}

extension EndpointsEx on {{feature_name.pascalCase()}}Endpoints {
  String get toPath => when(
        get{{feature_name.pascalCase()}}: () => 'YOUR_ENDPOINT_HERE',
      );
}
