// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repository_data_model.dart';

class RepositoryDataModelMapper extends ClassMapperBase<RepositoryDataModel> {
  RepositoryDataModelMapper._();

  static RepositoryDataModelMapper? _instance;
  static RepositoryDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoryDataModelMapper._());
      OwnerDataModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositoryDataModel';

  static String _$name(RepositoryDataModel v) => v.name;
  static const Field<RepositoryDataModel, String> _f$name =
      Field('name', _$name);
  static String? _$description(RepositoryDataModel v) => v.description;
  static const Field<RepositoryDataModel, String> _f$description =
      Field('description', _$description);
  static String _$updatedAt(RepositoryDataModel v) => v.updatedAt;
  static const Field<RepositoryDataModel, String> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: r'updated_at');
  static String _$htmlUrl(RepositoryDataModel v) => v.htmlUrl;
  static const Field<RepositoryDataModel, String> _f$htmlUrl =
      Field('htmlUrl', _$htmlUrl, key: r'html_url');
  static OwnerDataModel? _$owner(RepositoryDataModel v) => v.owner;
  static const Field<RepositoryDataModel, OwnerDataModel> _f$owner =
      Field('owner', _$owner);
  static int _$forksCount(RepositoryDataModel v) => v.forksCount;
  static const Field<RepositoryDataModel, int> _f$forksCount =
      Field('forksCount', _$forksCount, key: r'forks_count');
  static String _$createdAt(RepositoryDataModel v) => v.createdAt;
  static const Field<RepositoryDataModel, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: r'created_at');

  @override
  final MappableFields<RepositoryDataModel> fields = const {
    #name: _f$name,
    #description: _f$description,
    #updatedAt: _f$updatedAt,
    #htmlUrl: _f$htmlUrl,
    #owner: _f$owner,
    #forksCount: _f$forksCount,
    #createdAt: _f$createdAt,
  };

  static RepositoryDataModel _instantiate(DecodingData data) {
    return RepositoryDataModel(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        updatedAt: data.dec(_f$updatedAt),
        htmlUrl: data.dec(_f$htmlUrl),
        owner: data.dec(_f$owner),
        forksCount: data.dec(_f$forksCount),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static RepositoryDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositoryDataModel>(map);
  }

  static RepositoryDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<RepositoryDataModel>(json);
  }
}

mixin RepositoryDataModelMappable {
  String toJson() {
    return RepositoryDataModelMapper.ensureInitialized()
        .encodeJson<RepositoryDataModel>(this as RepositoryDataModel);
  }

  Map<String, dynamic> toMap() {
    return RepositoryDataModelMapper.ensureInitialized()
        .encodeMap<RepositoryDataModel>(this as RepositoryDataModel);
  }

  RepositoryDataModelCopyWith<RepositoryDataModel, RepositoryDataModel,
      RepositoryDataModel> get copyWith => _RepositoryDataModelCopyWithImpl<
          RepositoryDataModel, RepositoryDataModel>(
      this as RepositoryDataModel, $identity, $identity);
  @override
  String toString() {
    return RepositoryDataModelMapper.ensureInitialized()
        .stringifyValue(this as RepositoryDataModel);
  }

  @override
  bool operator ==(Object other) {
    return RepositoryDataModelMapper.ensureInitialized()
        .equalsValue(this as RepositoryDataModel, other);
  }

  @override
  int get hashCode {
    return RepositoryDataModelMapper.ensureInitialized()
        .hashValue(this as RepositoryDataModel);
  }
}

extension RepositoryDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RepositoryDataModel, $Out> {
  RepositoryDataModelCopyWith<$R, RepositoryDataModel, $Out>
      get $asRepositoryDataModel => $base.as(
          (v, t, t2) => _RepositoryDataModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RepositoryDataModelCopyWith<$R, $In extends RepositoryDataModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  OwnerDataModelCopyWith<$R, OwnerDataModel, OwnerDataModel>? get owner;
  $R call(
      {String? name,
      String? description,
      String? updatedAt,
      String? htmlUrl,
      OwnerDataModel? owner,
      int? forksCount,
      String? createdAt});
  RepositoryDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RepositoryDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RepositoryDataModel, $Out>
    implements RepositoryDataModelCopyWith<$R, RepositoryDataModel, $Out> {
  _RepositoryDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RepositoryDataModel> $mapper =
      RepositoryDataModelMapper.ensureInitialized();
  @override
  OwnerDataModelCopyWith<$R, OwnerDataModel, OwnerDataModel>? get owner =>
      $value.owner?.copyWith.$chain((v) => call(owner: v));
  @override
  $R call(
          {String? name,
          Object? description = $none,
          String? updatedAt,
          String? htmlUrl,
          Object? owner = $none,
          int? forksCount,
          String? createdAt}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (htmlUrl != null) #htmlUrl: htmlUrl,
        if (owner != $none) #owner: owner,
        if (forksCount != null) #forksCount: forksCount,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  RepositoryDataModel $make(CopyWithData data) => RepositoryDataModel(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      htmlUrl: data.get(#htmlUrl, or: $value.htmlUrl),
      owner: data.get(#owner, or: $value.owner),
      forksCount: data.get(#forksCount, or: $value.forksCount),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  RepositoryDataModelCopyWith<$R2, RepositoryDataModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RepositoryDataModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
