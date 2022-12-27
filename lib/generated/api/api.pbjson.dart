///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use chartSetTypeDescriptor instead')
const ChartSetType$json = const {
  '1': 'ChartSetType',
  '2': const [
    const {'1': 'Unknown', '2': 0},
    const {'1': 'Liner', '2': 1},
    const {'1': 'Spectrum', '2': 2},
  ],
};

/// Descriptor for `ChartSetType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List chartSetTypeDescriptor = $convert.base64Decode('CgxDaGFydFNldFR5cGUSCwoHVW5rbm93bhAAEgkKBUxpbmVyEAESDAoIU3BlY3RydW0QAg==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use sharpDescriptor instead')
const Sharp$json = const {
  '1': 'Sharp',
  '2': const [
    const {'1': 'width', '3': 1, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 2, '4': 1, '5': 5, '10': 'height'},
  ],
};

/// Descriptor for `Sharp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sharpDescriptor = $convert.base64Decode('CgVTaGFycBIUCgV3aWR0aBgBIAEoBVIFd2lkdGgSFgoGaGVpZ2h0GAIgASgFUgZoZWlnaHQ=');
@$core.Deprecated('Use data2DDescriptor instead')
const Data2D$json = const {
  '1': 'Data2D',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `Data2D`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List data2DDescriptor = $convert.base64Decode('CgZEYXRhMkQSDAoBeBgBIAEoAVIBeBIMCgF5GAIgASgBUgF5');
@$core.Deprecated('Use linerDataDescriptor instead')
const LinerData$json = const {
  '1': 'LinerData',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 3, '10': 'color'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.plot.Data2D', '10': 'data'},
  ],
};

/// Descriptor for `LinerData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linerDataDescriptor = $convert.base64Decode('CglMaW5lckRhdGESEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoA1IFY29sb3ISIAoEZGF0YRgDIAMoCzIMLnBsb3QuRGF0YTJEUgRkYXRh');
@$core.Deprecated('Use chartSetLinerDescriptor instead')
const ChartSetLiner$json = const {
  '1': 'ChartSetLiner',
  '2': const [
    const {'1': 'dataSet', '3': 2, '4': 3, '5': 11, '6': '.plot.LinerData', '10': 'dataSet'},
  ],
};

/// Descriptor for `ChartSetLiner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chartSetLinerDescriptor = $convert.base64Decode('Cg1DaGFydFNldExpbmVyEikKB2RhdGFTZXQYAiADKAsyDy5wbG90LkxpbmVyRGF0YVIHZGF0YVNldA==');
@$core.Deprecated('Use chartDescriptor instead')
const Chart$json = const {
  '1': 'Chart',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.plot.ChartSetType', '10': 'type'},
    const {'1': 'chartSet', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'chartSet'},
  ],
};

/// Descriptor for `Chart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chartDescriptor = $convert.base64Decode('CgVDaGFydBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSJgoEdHlwZRgCIAEoDjISLnBsb3QuQ2hhcnRTZXRUeXBlUgR0eXBlEjAKCGNoYXJ0U2V0GAMgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIIY2hhcnRTZXQ=');
@$core.Deprecated('Use figureDescriptor instead')
const Figure$json = const {
  '1': 'Figure',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'sharp', '3': 3, '4': 1, '5': 11, '6': '.plot.Sharp', '10': 'sharp'},
    const {'1': 'charts', '3': 4, '4': 3, '5': 11, '6': '.plot.Chart', '10': 'charts'},
  ],
};

/// Descriptor for `Figure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List figureDescriptor = $convert.base64Decode('CgZGaWd1cmUSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIQoFc2hhcnAYAyABKAsyCy5wbG90LlNoYXJwUgVzaGFycBIjCgZjaGFydHMYBCADKAsyCy5wbG90LkNoYXJ0UgZjaGFydHM=');
@$core.Deprecated('Use newFigureReplyDescriptor instead')
const NewFigureReply$json = const {
  '1': 'NewFigureReply',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `NewFigureReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newFigureReplyDescriptor = $convert.base64Decode('Cg5OZXdGaWd1cmVSZXBseRIOCgJpZBgBIAEoBVICaWQ=');
