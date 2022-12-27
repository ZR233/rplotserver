import 'package:get/get.dart';
import 'package:rplot/data/figure.dart';


class Controller extends GetxController{

  var inter = 0;
  RxList<DataFigure> figures = RxList();
  var currentFigureIndex = 0.obs;

  String get currentFigureName {
    var index = currentFigureIndex.value;
    if(index < figures.length){
      return figures[index].name;
    }
    return "no data";
  }


  addPageTest(){
    var p = DataFigure();
    inter++;
    p.name = "liner $inter";

    figures.add(p);
  }

  int addFigure(DataFigure figure){
    figures.add(figure);
    return figures.length -1;
  }
  clear(){
    currentFigureIndex.value = 0;
    figures.clear();
  }

  toFigure(int index){
    if( index < figures.length && index >=0){
      currentFigureIndex.value = index;
    }

  }
  previousFigure(){
    toFigure(currentFigureIndex.value-1);
  }
  nextFigure(){
    toFigure(currentFigureIndex.value+1);
  }

}
