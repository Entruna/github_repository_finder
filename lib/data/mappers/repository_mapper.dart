import 'package:github_repository_finder/data/mappers/owner_mapper.dart';
import 'package:github_repository_finder/data/remote/models/owner_remote_model.dart';
import 'package:github_repository_finder/data/remote/models/repository_remote_model.dart';
import 'package:github_repository_finder/domain/models/repository_domain_model.dart';

extension RepositoryRemoteToDomainMapper on RepositoryRemoteModel {
  RepositoryDomainModel toDomain() => RepositoryDomainModel(
    name: name,
    description: description ?? '',
    updatedAt: updatedAt,
    htmlUrl: htmlUrl,
    forksCount: forksCount,
    createdAt: createdAt,
    owner: (owner ?? OwnerRemoteModel(login: "", avatarUrl: "", htmlUrl: "")).toDomain(),
  );
}
