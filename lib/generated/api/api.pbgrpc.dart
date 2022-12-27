///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'api.pb.dart' as $0;
export 'api.pb.dart';

class PlotClient extends $grpc.Client {
  static final _$newFigure = $grpc.ClientMethod<$0.Figure, $0.NewFigureReply>(
      '/plot.Plot/NewFigure',
      ($0.Figure value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NewFigureReply.fromBuffer(value));
  static final _$clear = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/plot.Plot/Clear',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  PlotClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.NewFigureReply> newFigure($0.Figure request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newFigure, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> clear($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$clear, request, options: options);
  }
}

abstract class PlotServiceBase extends $grpc.Service {
  $core.String get $name => 'plot.Plot';

  PlotServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Figure, $0.NewFigureReply>(
        'NewFigure',
        newFigure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Figure.fromBuffer(value),
        ($0.NewFigureReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'Clear',
        clear_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.NewFigureReply> newFigure_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Figure> request) async {
    return newFigure(call, await request);
  }

  $async.Future<$0.Empty> clear_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return clear(call, await request);
  }

  $async.Future<$0.NewFigureReply> newFigure(
      $grpc.ServiceCall call, $0.Figure request);
  $async.Future<$0.Empty> clear($grpc.ServiceCall call, $0.Empty request);
}
