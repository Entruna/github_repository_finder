import 'package:dart_mappable/dart_mappable.dart';
import 'package:github_repository_finder/data/models/owner_data_model.dart';

part 'repository_data_model.mapper.dart';

@MappableClass()
class RepositoryDataModel with RepositoryDataModelMappable {
  final String name;
  final String? description;
  final String updatedAt;
  final String htmlUrl;
  final OwnerDataModel? owner;
  final int forksCount;
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
