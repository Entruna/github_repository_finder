import 'package:github_repository_finder/data/remote/models/owner_remote_model.dart';
import 'package:github_repository_finder/domain/models/owner_domain_model.dart';

extension OwnerRemoteToDomainMapper on OwnerRemoteModel {
  OwnerDomainModel toDomain() => OwnerDomainModel(login: login, avatarUrl: avatarUrl, htmlUrl: htmlUrl);
}
