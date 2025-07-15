import 'owner_domain_model.dart';

class RepositoryDomainModel {
  final String name;
  final String description;
  final String updatedAt;
  final String htmlUrl;
  final OwnerDomainModel owner;
  final int forksCount;
  final String createdAt;

  const RepositoryDomainModel({
    required this.name,
    required this.description,
    required this.updatedAt,
    required this.htmlUrl,
    required this.owner,
    required this.forksCount,
    required this.createdAt,
  });
}
