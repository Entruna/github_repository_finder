import 'package:dart_mappable/dart_mappable.dart';
import 'package:github_repository_finder/data/models/owner_data_model.dart';

part 'repository_data_model.mapper.dart';

@MappableClass()
class RepositoryDataModel with RepositoryDataModelMappable {
  final String name;
  final String? description;
  @MappableField(key: "updated_at")
  final String updatedAt;
  @MappableField(key: "html_url")
  final String htmlUrl;
  final OwnerDataModel? owner;
  @MappableField(key: "forks_count")
  final int forksCount;
  @MappableField(key: "created_at")
  final String createdAt;

  RepositoryDataModel({
    required this.name,
    required this.description,
    required this.updatedAt,
    required this.htmlUrl,
    required this.owner,
    required this.forksCount,
    required this.createdAt,
  });
}
