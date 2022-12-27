import 'package:flutter/material.dart';
import 'package:rplot/data/figure.dart';
import 'package:rplot/data/liner.dart';
import 'package:rplot/view/chart_liner.dart';


class FigureWidget extends StatelessWidget {

  final DataFigure data;

  const FigureWidget(this.data, {super.key});


  @override
  Widget build(BuildContext context) {

    var children=<Widget>[];

    for (var one in data.charts){
      if(one is ChartDataLiner){
        children.add(ChartLiner(one));
      }else{
        children.add(const Center());
      }
    }

    if( children.length == 1){
      return ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: children.first,
      );
    }else{
      return GridView.count(
        crossAxisCount: data.sharp.width,
        children: children,
      );
    }



  }

}