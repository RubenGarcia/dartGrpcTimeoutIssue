//
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'test.pb.dart' as $0;

export 'test.pb.dart';

@$pb.GrpcServiceName('test.MyService')
class MyServiceClient extends $grpc.Client {
  static final _$getService = $grpc.ClientMethod<$0.MyRequest, $0.MyResponse>(
      '/test.MyService/getService',
      ($0.MyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MyResponse.fromBuffer(value));

  MyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MyResponse> getService($0.MyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getService, request, options: options);
  }
}

@$pb.GrpcServiceName('test.MyService')
abstract class MyServiceBase extends $grpc.Service {
  $core.String get $name => 'test.MyService';

  MyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MyRequest, $0.MyResponse>(
        'getService',
        getService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MyRequest.fromBuffer(value),
        ($0.MyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MyResponse> getService_Pre($grpc.ServiceCall call, $async.Future<$0.MyRequest> request) async {
    return getService(call, await request);
  }

  $async.Future<$0.MyResponse> getService($grpc.ServiceCall call, $0.MyRequest request);
}
