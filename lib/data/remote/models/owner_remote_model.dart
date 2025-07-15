import 'package:dart_mappable/dart_mappable.dart';

part 'owner_remote_model.mapper.dart';

@MappableClass()
class OwnerRemoteModel with OwnerRemoteModelMappable {
  final String login;
  @MappableField(key: "avatar_url")
  final String avatarUrl;
  @MappableField(key: "html_url")
  final String htmlUrl;

  OwnerRemoteModel({required this.login, required this.avatarUrl, required this.htmlUrl});
}
