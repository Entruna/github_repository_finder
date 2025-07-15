import 'package:dart_mappable/dart_mappable.dart';

part 'owner_data_model.mapper.dart';

@MappableClass()
class OwnerDataModel with OwnerDataModelMappable {
  final String login;
  final String avatarUrl;
  final String htmlUrl;

  OwnerDataModel({required this.login, required this.avatarUrl, required this.htmlUrl});
}
