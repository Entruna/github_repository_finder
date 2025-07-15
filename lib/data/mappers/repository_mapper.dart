import 'package:github_repository_finder/data/mappers/owner_mapper.dart';
import 'package:github_repository_finder/data/models/owner_data_model.dart';
import 'package:github_repository_finder/data/models/repository_data_model.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';

/// data -> domain
extension RepositoryDataToDomainMapper on RepositoryDataModel {
  RepositoryDomainModel toDomain() => RepositoryDomainModel(
    name: name,
    description: description ?? "",
    updatedAt: updatedAt,
    htmlUrl: htmlUrl,
    forksCount: forksCount,
    createdAt: createdAt,
    owner: (owner ?? OwnerDataModel(login: "", avatarUrl: "", htmlUrl: "")).toDomain(),
  );
}

/// domain -> data
extension RepositoryDomainToDataMapper on RepositoryDomainModel {
  RepositoryDataModel toData() => RepositoryDataModel(
    name: name,
    description: description,
    updatedAt: updatedAt,
    htmlUrl: htmlUrl,
    forksCount: forksCount,
    createdAt: createdAt,
    owner: owner.toData(),
  );
}
