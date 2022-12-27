import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
import 'package:rplot/api.dart';
import 'package:rplot/view/figure.dart';
import 'controller.dart';

Future<void> main() async{
  Get.put(Controller());


  final server = Server(
    [PlotService()],

  );


  await server.serve(port: 50051);


  runApp(const GetMaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.find();

    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  onPressed: c.previousFigure,
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                  )),
              SizedBox(
                width: 400,
                child: Center(
                  child: Obx(() => DropdownButton<int>(
                      hint: Text(c.currentFigureName, style: context.textTheme.headline4?.copyWith(color: Colors.white)),
                      underline: Container(
                        height: 1,
                        color: Colors.transparent,
                      ),
                      items: c.figures
                          .asMap()
                          .keys
                          .map<DropdownMenuItem<int>>((element) {
                        return DropdownMenuItem<int>(
                            value: element, child: Text(c.figures[element].name));
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          c.toFigure(value);
                        }
                      })),
                ),
              ),


              IconButton(
                  onPressed: c.nextFigure,
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ))
            ],
          ),
          actions: [],
        ),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(child: Obx(() {
          if (c.figures.isNotEmpty) {
            var data = c.figures[c.currentFigureIndex.value];
            return FigureWidget(data);
          }
          return const Text("no data");
        }))
    );
  }
}
