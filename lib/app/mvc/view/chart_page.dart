import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../model/stock_data.dart';

class ChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the static data
    final List<CandleData> data = getCandleData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Candlestick Chart for IBM'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(),
          series: <CandleSeries<CandleData, DateTime>>[
            CandleSeries<CandleData, DateTime>(
              dataSource: data,
              xValueMapper: (CandleData data, _) => data.date,
              lowValueMapper: (CandleData data, _) => data.low,
              highValueMapper: (CandleData data, _) => data.high,
              openValueMapper: (CandleData data, _) => data.open,
              closeValueMapper: (CandleData data, _) => data.close,
              name: 'IBM',
            ),
          ],
        ),
      ),
    );
  }
}
