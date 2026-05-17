// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'download_type.dart';

class DownloadTypeMapper extends EnumMapper<DownloadType> {
  DownloadTypeMapper._();

  static DownloadTypeMapper? _instance;
  static DownloadTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DownloadTypeMapper._());
    }
    return _instance!;
  }

  static DownloadType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DownloadType decode(dynamic value) {
    switch (value) {
      case r'zip':
        return DownloadType.zip;
      case r'cbz':
        return DownloadType.cbz;
      case r'torrent':
        return DownloadType.torrent;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DownloadType self) {
    switch (self) {
      case DownloadType.zip:
        return r'zip';
      case DownloadType.cbz:
        return r'cbz';
      case DownloadType.torrent:
        return r'torrent';
    }
  }
}

extension DownloadTypeMapperExtension on DownloadType {
  String toValue() {
    DownloadTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DownloadType>(this) as String;
  }
}

