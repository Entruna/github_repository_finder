import 'package:dart_mappable/dart_mappable.dart';
import 'package:github_repository_finder/data/remote/models/owner_remote_model.dart';

part 'repository_remote_model.mapper.dart';

@MappableClass()
class RepositoryRemoteModel with RepositoryRemoteModelMappable {
  final String name;
  final String? description;
  @MappableField(key: "updated_at")
  final String updatedAt;
  @MappableField(key: "html_url")
  final String htmlUrl;
  final OwnerRemoteModel? owner;
  @MappableField(key: "forks_count")
  final int forksCount;
  @MappableField(key: "created_at")
  final String createdAt;

  RepositoryRemoteModel({
    required this.name,
    required this.description,
    required this.updatedAt,
    required this.htmlUrl,
    required this.owner,
    required this.forksCount,
    required this.createdAt,
  });
}
