import 'package:grpc/src/server/call.dart';
import 'package:rplot/controller.dart';
import 'package:rplot/data/abase.dart';
import 'package:rplot/data/figure.dart';
import 'package:rplot/data/liner.dart';

import 'generated/api/api.pbgrpc.dart';
import 'package:get/get.dart';

class PlotService extends PlotServiceBase{

  Controller controller = Get.find();

  @override
  Future<Empty> clear(ServiceCall call, Empty request) async{
    controller.clear();
    return Empty();
  }

  @override
  Future<NewFigureReply> newFigure(ServiceCall call, Figure request) async{
    var figure = DataFigure();
    figure.name = request.name;
    figure.sharp = request.sharp;
    for (var one in request.charts){
      var chart = ChartData();
      switch (one.type){
        case ChartSetType.Liner:
          var chart_ = ChartDataLiner() ;
          var chartSetLiner = ChartSetLiner();
          one.chartSet.unpackInto(chartSetLiner);
          chart_.title = one.title;
          chart_.dataSet = chartSetLiner.dataSet;
          chart = chart_;
          break;
        case ChartSetType.Spectrum:
          // TODO: Handle this case.
          break;
        case ChartSetType.Unknown:
          // TODO: Handle this case.
          break;
      }

      figure.charts.add(chart);
    }
    var id = controller.addFigure(figure);
    return  NewFigureReply(id: id);
  }
}