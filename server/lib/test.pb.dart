//
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class MyRequest extends $pb.GeneratedMessage {
  factory MyRequest({
    $core.bool? a,
    $core.bool? b,
    $core.bool? c,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    if (c != null) {
      $result.c = c;
    }
    return $result;
  }
  MyRequest._() : super();
  factory MyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'test'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'a')
    ..aOB(2, _omitFieldNames ? '' : 'b')
    ..aOB(3, _omitFieldNames ? '' : 'c')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyRequest clone() => MyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyRequest copyWith(void Function(MyRequest) updates) => super.copyWith((message) => updates(message as MyRequest)) as MyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyRequest create() => MyRequest._();
  MyRequest createEmptyInstance() => create();
  static $pb.PbList<MyRequest> createRepeated() => $pb.PbList<MyRequest>();
  @$core.pragma('dart2js:noInline')
  static MyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyRequest>(create);
  static MyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get a => $_getBF(0);
  @$pb.TagNumber(1)
  set a($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get b => $_getBF(1);
  @$pb.TagNumber(2)
  set b($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get c => $_getBF(2);
  @$pb.TagNumber(3)
  set c($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => clearField(3);
}

class MyResponse extends $pb.GeneratedMessage {
  factory MyResponse({
    $fixnum.Int64? a,
    $fixnum.Int64? b,
    $fixnum.Int64? c,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    if (c != null) {
      $result.c = c;
    }
    return $result;
  }
  MyResponse._() : super();
  factory MyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'test'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'a', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'b', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'c', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyResponse clone() => MyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyResponse copyWith(void Function(MyResponse) updates) => super.copyWith((message) => updates(message as MyResponse)) as MyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyResponse create() => MyResponse._();
  MyResponse createEmptyInstance() => create();
  static $pb.PbList<MyResponse> createRepeated() => $pb.PbList<MyResponse>();
  @$core.pragma('dart2js:noInline')
  static MyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyResponse>(create);
  static MyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get a => $_getI64(0);
  @$pb.TagNumber(1)
  set a($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get b => $_getI64(1);
  @$pb.TagNumber(2)
  set b($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get c => $_getI64(2);
  @$pb.TagNumber(3)
  set c($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
