// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'repository_remote_model.dart';

class RepositoryRemoteModelMapper
    extends ClassMapperBase<RepositoryRemoteModel> {
  RepositoryRemoteModelMapper._();

  static RepositoryRemoteModelMapper? _instance;
  static RepositoryRemoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoryRemoteModelMapper._());
      OwnerRemoteModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RepositoryRemoteModel';

  static String _$name(RepositoryRemoteModel v) => v.name;
  static const Field<RepositoryRemoteModel, String> _f$name =
      Field('name', _$name);
  static String? _$description(RepositoryRemoteModel v) => v.description;
  static const Field<RepositoryRemoteModel, String> _f$description =
      Field('description', _$description);
  static String _$updatedAt(RepositoryRemoteModel v) => v.updatedAt;
  static const Field<RepositoryRemoteModel, String> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: r'updated_at');
  static String _$htmlUrl(RepositoryRemoteModel v) => v.htmlUrl;
  static const Field<RepositoryRemoteModel, String> _f$htmlUrl =
      Field('htmlUrl', _$htmlUrl, key: r'html_url');
  static OwnerRemoteModel? _$owner(RepositoryRemoteModel v) => v.owner;
  static const Field<RepositoryRemoteModel, OwnerRemoteModel> _f$owner =
      Field('owner', _$owner);
  static int _$forksCount(RepositoryRemoteModel v) => v.forksCount;
  static const Field<RepositoryRemoteModel, int> _f$forksCount =
      Field('forksCount', _$forksCount, key: r'forks_count');
  static String _$createdAt(RepositoryRemoteModel v) => v.createdAt;
  static const Field<RepositoryRemoteModel, String> _f$createdAt =
      Field('createdAt', _$createdAt, key: r'created_at');

  @override
  final MappableFields<RepositoryRemoteModel> fields = const {
    #name: _f$name,
    #description: _f$description,
    #updatedAt: _f$updatedAt,
    #htmlUrl: _f$htmlUrl,
    #owner: _f$owner,
    #forksCount: _f$forksCount,
    #createdAt: _f$createdAt,
  };

  static RepositoryRemoteModel _instantiate(DecodingData data) {
    return RepositoryRemoteModel(
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

  static RepositoryRemoteModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RepositoryRemoteModel>(map);
  }

  static RepositoryRemoteModel fromJson(String json) {
    return ensureInitialized().decodeJson<RepositoryRemoteModel>(json);
  }
}

mixin RepositoryRemoteModelMappable {
  String toJson() {
    return RepositoryRemoteModelMapper.ensureInitialized()
        .encodeJson<RepositoryRemoteModel>(this as RepositoryRemoteModel);
  }

  Map<String, dynamic> toMap() {
    return RepositoryRemoteModelMapper.ensureInitialized()
        .encodeMap<RepositoryRemoteModel>(this as RepositoryRemoteModel);
  }

  RepositoryRemoteModelCopyWith<RepositoryRemoteModel, RepositoryRemoteModel,
      RepositoryRemoteModel> get copyWith => _RepositoryRemoteModelCopyWithImpl<
          RepositoryRemoteModel, RepositoryRemoteModel>(
      this as RepositoryRemoteModel, $identity, $identity);
  @override
  String toString() {
    return RepositoryRemoteModelMapper.ensureInitialized()
        .stringifyValue(this as RepositoryRemoteModel);
  }

  @override
  bool operator ==(Object other) {
    return RepositoryRemoteModelMapper.ensureInitialized()
        .equalsValue(this as RepositoryRemoteModel, other);
  }

  @override
  int get hashCode {
    return RepositoryRemoteModelMapper.ensureInitialized()
        .hashValue(this as RepositoryRemoteModel);
  }
}

extension RepositoryRemoteModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RepositoryRemoteModel, $Out> {
  RepositoryRemoteModelCopyWith<$R, RepositoryRemoteModel, $Out>
      get $asRepositoryRemoteModel => $base.as(
          (v, t, t2) => _RepositoryRemoteModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RepositoryRemoteModelCopyWith<
    $R,
    $In extends RepositoryRemoteModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  OwnerRemoteModelCopyWith<$R, OwnerRemoteModel, OwnerRemoteModel>? get owner;
  $R call(
      {String? name,
      String? description,
      String? updatedAt,
      String? htmlUrl,
      OwnerRemoteModel? owner,
      int? forksCount,
      String? createdAt});
  RepositoryRemoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RepositoryRemoteModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RepositoryRemoteModel, $Out>
    implements RepositoryRemoteModelCopyWith<$R, RepositoryRemoteModel, $Out> {
  _RepositoryRemoteModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RepositoryRemoteModel> $mapper =
      RepositoryRemoteModelMapper.ensureInitialized();
  @override
  OwnerRemoteModelCopyWith<$R, OwnerRemoteModel, OwnerRemoteModel>? get owner =>
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
  RepositoryRemoteModel $make(CopyWithData data) => RepositoryRemoteModel(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      htmlUrl: data.get(#htmlUrl, or: $value.htmlUrl),
      owner: data.get(#owner, or: $value.owner),
      forksCount: data.get(#forksCount, or: $value.forksCount),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  RepositoryRemoteModelCopyWith<$R2, RepositoryRemoteModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RepositoryRemoteModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
