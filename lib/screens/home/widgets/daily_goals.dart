import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../home_screen_constants.dart';

class DailyGoals extends StatefulWidget {
  const DailyGoals({Key? key}) : super(key: key);

  @override
  State<DailyGoals> createState() => _DailyGoalsState();
}

class _DailyGoalsState extends State<DailyGoals> {
  late List<NutritionData> _charData;

  @override
  void initState() {
    _charData = getCharData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Align(
            child: Text(
              'Daily Goals',
              style: statHeaderStyle,
            ),
            alignment: Alignment(-0.7, 0),
          ),
          Card(
            elevation: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: 350,
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 115,
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<NutritionData, int>(
                          dataSource: _charData,
                          xValueMapper: (NutritionData data, _) => data.protein,
                          yValueMapper: (NutritionData data, _) => data.carbs,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    width: 115,
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<NutritionData, int>(
                          dataSource: _charData,
                          xValueMapper: (NutritionData data, _) => data.carbs,
                          yValueMapper: (NutritionData data, _) => data.protein,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    width: 115,
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<NutritionData, int>(
                          dataSource: _charData,
                          xValueMapper: (NutritionData data, _) => data.carbs,
                          yValueMapper: (NutritionData data, _) => data.protein,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<NutritionData> getCharData() {
    final List<NutritionData> charData = [
      NutritionData(24, 900, 25),
    ];
    return charData;
  }
}

class NutritionData {
  final int protein;
  final int carbs;
  final int fat;

  NutritionData(this.protein, this.carbs, this.fat);
}
