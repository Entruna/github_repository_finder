// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'owner_data_model.dart';

class OwnerDataModelMapper extends ClassMapperBase<OwnerDataModel> {
  OwnerDataModelMapper._();

  static OwnerDataModelMapper? _instance;
  static OwnerDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OwnerDataModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OwnerDataModel';

  static String _$login(OwnerDataModel v) => v.login;
  static const Field<OwnerDataModel, String> _f$login = Field('login', _$login);
  static String _$avatarUrl(OwnerDataModel v) => v.avatarUrl;
  static const Field<OwnerDataModel, String> _f$avatarUrl =
      Field('avatarUrl', _$avatarUrl, key: r'avatar_url');
  static String _$htmlUrl(OwnerDataModel v) => v.htmlUrl;
  static const Field<OwnerDataModel, String> _f$htmlUrl =
      Field('htmlUrl', _$htmlUrl, key: r'html_url');

  @override
  final MappableFields<OwnerDataModel> fields = const {
    #login: _f$login,
    #avatarUrl: _f$avatarUrl,
    #htmlUrl: _f$htmlUrl,
  };

  static OwnerDataModel _instantiate(DecodingData data) {
    return OwnerDataModel(
        login: data.dec(_f$login),
        avatarUrl: data.dec(_f$avatarUrl),
        htmlUrl: data.dec(_f$htmlUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static OwnerDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OwnerDataModel>(map);
  }

  static OwnerDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<OwnerDataModel>(json);
  }
}

mixin OwnerDataModelMappable {
  String toJson() {
    return OwnerDataModelMapper.ensureInitialized()
        .encodeJson<OwnerDataModel>(this as OwnerDataModel);
  }

  Map<String, dynamic> toMap() {
    return OwnerDataModelMapper.ensureInitialized()
        .encodeMap<OwnerDataModel>(this as OwnerDataModel);
  }

  OwnerDataModelCopyWith<OwnerDataModel, OwnerDataModel, OwnerDataModel>
      get copyWith =>
          _OwnerDataModelCopyWithImpl<OwnerDataModel, OwnerDataModel>(
              this as OwnerDataModel, $identity, $identity);
  @override
  String toString() {
    return OwnerDataModelMapper.ensureInitialized()
        .stringifyValue(this as OwnerDataModel);
  }

  @override
  bool operator ==(Object other) {
    return OwnerDataModelMapper.ensureInitialized()
        .equalsValue(this as OwnerDataModel, other);
  }

  @override
  int get hashCode {
    return OwnerDataModelMapper.ensureInitialized()
        .hashValue(this as OwnerDataModel);
  }
}

extension OwnerDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OwnerDataModel, $Out> {
  OwnerDataModelCopyWith<$R, OwnerDataModel, $Out> get $asOwnerDataModel =>
      $base.as((v, t, t2) => _OwnerDataModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OwnerDataModelCopyWith<$R, $In extends OwnerDataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? login, String? avatarUrl, String? htmlUrl});
  OwnerDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OwnerDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OwnerDataModel, $Out>
    implements OwnerDataModelCopyWith<$R, OwnerDataModel, $Out> {
  _OwnerDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OwnerDataModel> $mapper =
      OwnerDataModelMapper.ensureInitialized();
  @override
  $R call({String? login, String? avatarUrl, String? htmlUrl}) =>
      $apply(FieldCopyWithData({
        if (login != null) #login: login,
        if (avatarUrl != null) #avatarUrl: avatarUrl,
        if (htmlUrl != null) #htmlUrl: htmlUrl
      }));
  @override
  OwnerDataModel $make(CopyWithData data) => OwnerDataModel(
      login: data.get(#login, or: $value.login),
      avatarUrl: data.get(#avatarUrl, or: $value.avatarUrl),
      htmlUrl: data.get(#htmlUrl, or: $value.htmlUrl));

  @override
  OwnerDataModelCopyWith<$R2, OwnerDataModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OwnerDataModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
