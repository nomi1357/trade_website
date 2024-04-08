import 'package:flutter/material.dart';

import 'package:mrx_charts/mrx_charts.dart';
import 'package:trades_website/core/consts.dart';

class BrandChart extends StatefulWidget {
  const BrandChart({Key? key}) : super(key: key);

  @override
  State<BrandChart> createState() => _BrandChartState();
}

class _BrandChartState extends State<BrandChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(
        maxHeight: 120,
        maxWidth: double.infinity,
      ),
      decoration: const BoxDecoration(color: mainBgColorTwo),
      child: Chart(
        layers: layers(),
        padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(
          bottom: 12.0,
        ),
      ),
    );
  }

  List<ChartLayer> layers() {
    List<ChartLineDataItem> listChartLineDataItem = [
      ChartLineDataItem(
        value: 1,
        x: 0.1,
      ),
      ChartLineDataItem(
        value: 200,
        x: 0.3,
      ),
      ChartLineDataItem(
        value: 400,
        x: 0.5,
      ),
      ChartLineDataItem(
        value: 600,
        x: 0.7,
      ),
      ChartLineDataItem(
        value: 800,
        x: 0.7,
      ),
      ChartLineDataItem(
        value: 1000,
        x: 0.8,
      ),
    ];
    return [
      ChartHighlightLayer(
        shape: () => ChartHighlightLineShape<ChartLineDataItem>(
          backgroundColor: whiteColor,
          currentPos: (item) => item.currentValuePos,
          radius: const BorderRadius.all(Radius.circular(2)),
          width: 10,
        ),
      ),
      ChartAxisLayer(
        settings: const ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: .5,
            max: 1,
            min: 0,
            textStyle: TextStyle(
              color: whiteColor,
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 999,
            max: 1000,
            min: 1,
            textStyle: TextStyle(
              color: whiteColor,
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        labelX: (value) => value.toStringAsFixed(1),
        labelY: (value) => value.toInt().toString(),
      ),
      ChartLineLayer(
        items: listChartLineDataItem,
        settings: const ChartLineSettings(
          color: greenColorTwo,
          thickness: 2,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipLineShape<ChartLineDataItem>(
          backgroundColor: mainBgColorTwo,
          circleBackgroundColor: mainAppColor,
          circleBorderColor: mainAppColor,
          circleSize: 4.0,
          circleBorderThickness: 2.0,
          currentPos: (item) => item.currentValuePos,
          onTextValue: (item) => '${item.value.toString()}k',
          marginBottom: 6.0,
          radius: 6.0,
          textStyle: const TextStyle(
            color: whiteColor,
            fontSize: 8,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ];
  }
}
