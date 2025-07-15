import 'package:github_repository_finder/data/models/owner_data_model.dart';
import 'package:github_repository_finder/domain/models/owner_domain_model.dart';

/// data -> domain
extension OwnerDataToDomainMapper on OwnerDataModel {
  OwnerDomainModel toDomain() => OwnerDomainModel(login: login, avatarUrl: avatarUrl, htmlUrl: htmlUrl);
}

/// domain -> data
extension OwnerDomainToDataMapper on OwnerDomainModel {
  OwnerDataModel toData() => OwnerDataModel(login: login, avatarUrl: avatarUrl, htmlUrl: htmlUrl);
}
