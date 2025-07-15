// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'owner_remote_model.dart';

class OwnerRemoteModelMapper extends ClassMapperBase<OwnerRemoteModel> {
  OwnerRemoteModelMapper._();

  static OwnerRemoteModelMapper? _instance;
  static OwnerRemoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OwnerRemoteModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OwnerRemoteModel';

  static String _$login(OwnerRemoteModel v) => v.login;
  static const Field<OwnerRemoteModel, String> _f$login =
      Field('login', _$login);
  static String _$avatarUrl(OwnerRemoteModel v) => v.avatarUrl;
  static const Field<OwnerRemoteModel, String> _f$avatarUrl =
      Field('avatarUrl', _$avatarUrl, key: r'avatar_url');
  static String _$htmlUrl(OwnerRemoteModel v) => v.htmlUrl;
  static const Field<OwnerRemoteModel, String> _f$htmlUrl =
      Field('htmlUrl', _$htmlUrl, key: r'html_url');

  @override
  final MappableFields<OwnerRemoteModel> fields = const {
    #login: _f$login,
    #avatarUrl: _f$avatarUrl,
    #htmlUrl: _f$htmlUrl,
  };

  static OwnerRemoteModel _instantiate(DecodingData data) {
    return OwnerRemoteModel(
        login: data.dec(_f$login),
        avatarUrl: data.dec(_f$avatarUrl),
        htmlUrl: data.dec(_f$htmlUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static OwnerRemoteModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OwnerRemoteModel>(map);
  }

  static OwnerRemoteModel fromJson(String json) {
    return ensureInitialized().decodeJson<OwnerRemoteModel>(json);
  }
}

mixin OwnerRemoteModelMappable {
  String toJson() {
    return OwnerRemoteModelMapper.ensureInitialized()
        .encodeJson<OwnerRemoteModel>(this as OwnerRemoteModel);
  }

  Map<String, dynamic> toMap() {
    return OwnerRemoteModelMapper.ensureInitialized()
        .encodeMap<OwnerRemoteModel>(this as OwnerRemoteModel);
  }

  OwnerRemoteModelCopyWith<OwnerRemoteModel, OwnerRemoteModel, OwnerRemoteModel>
      get copyWith =>
          _OwnerRemoteModelCopyWithImpl<OwnerRemoteModel, OwnerRemoteModel>(
              this as OwnerRemoteModel, $identity, $identity);
  @override
  String toString() {
    return OwnerRemoteModelMapper.ensureInitialized()
        .stringifyValue(this as OwnerRemoteModel);
  }

  @override
  bool operator ==(Object other) {
    return OwnerRemoteModelMapper.ensureInitialized()
        .equalsValue(this as OwnerRemoteModel, other);
  }

  @override
  int get hashCode {
    return OwnerRemoteModelMapper.ensureInitialized()
        .hashValue(this as OwnerRemoteModel);
  }
}

extension OwnerRemoteModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OwnerRemoteModel, $Out> {
  OwnerRemoteModelCopyWith<$R, OwnerRemoteModel, $Out>
      get $asOwnerRemoteModel => $base
          .as((v, t, t2) => _OwnerRemoteModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OwnerRemoteModelCopyWith<$R, $In extends OwnerRemoteModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? login, String? avatarUrl, String? htmlUrl});
  OwnerRemoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OwnerRemoteModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OwnerRemoteModel, $Out>
    implements OwnerRemoteModelCopyWith<$R, OwnerRemoteModel, $Out> {
  _OwnerRemoteModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OwnerRemoteModel> $mapper =
      OwnerRemoteModelMapper.ensureInitialized();
  @override
  $R call({String? login, String? avatarUrl, String? htmlUrl}) =>
      $apply(FieldCopyWithData({
        if (login != null) #login: login,
        if (avatarUrl != null) #avatarUrl: avatarUrl,
        if (htmlUrl != null) #htmlUrl: htmlUrl
      }));
  @override
  OwnerRemoteModel $make(CopyWithData data) => OwnerRemoteModel(
      login: data.get(#login, or: $value.login),
      avatarUrl: data.get(#avatarUrl, or: $value.avatarUrl),
      htmlUrl: data.get(#htmlUrl, or: $value.htmlUrl));

  @override
  OwnerRemoteModelCopyWith<$R2, OwnerRemoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OwnerRemoteModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
