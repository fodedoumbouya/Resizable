import 'package:flutter/material.dart';
import 'package:resizable_widget/resizable_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstExample(),
    );
  }
}

class FirstExample extends StatelessWidget {
  const FirstExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Example'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          double areaHeight = constraint.maxHeight * 0.8;
          double areaWidth = constraint.maxWidth * 0.8;

          return Container(
            width: constraint.maxWidth,
            height: constraint.maxHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightBlue.shade200,
                  Colors.blue.shade700,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Widget Area',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: constraint.maxHeight * 0.8,
                  width: constraint.maxWidth * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: ResizableWidget(
                    areaHeight: areaHeight,
                    areaWidth: areaWidth,
                    height: 250,
                    width: 250,
                    minHeight: 100,
                    minWidth: 100,
                    isCurrentScreen: true,
                    dragWidgetsArea: const Size.square(30 / 2),
                    onTap: (s) {},
                    lastPosition: (p0, p1) {},
                    onStartMoving: (b) {},
                    triggersList: DragTriggersEnum.values
                        .map(
                          (e) => Trigger(
                            dragTriggerType: e,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white38,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              3,
                              (index) => const Divider(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              3,
                              (index) => const VerticalDivider(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
