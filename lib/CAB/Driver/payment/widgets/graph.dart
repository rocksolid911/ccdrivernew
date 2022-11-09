/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class SimpleBarChart extends StatelessWidget {
  final String? day;
  final List<charts.Series<dynamic,String>> seriesList;
  final bool animate;

   SimpleBarChart(this.seriesList, {required this.animate,  this.day});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return charts.BarChart(

      seriesList,
      animate: animate,
      behaviors: [
        // Initial selection can be configured by passing in:
        //
        // A list of datum config, specified with series ID and domain value.
        // A list of series config, which is a list of series ID(s).
        //
        // Initial selection can be applied to any chart type.
        //
        // [BarChart] by default includes behaviors [SelectNearest] and
        // [DomainHighlighter]. So this behavior shows the initial selection
        // highlighted and when another datum is tapped, the selection changes.
        charts.InitialSelection(selectedDataConfig: [
          charts.SeriesDatumConfig<String>('Sales', 'THU')
        ])
      ],
      /// Assign a custom style for the measure axis.
      ///
      /// The NoneRenderSpec can still draw an axis line with
      /// showAxisLine=true.
      primaryMeasureAxis:
      const charts.NumericAxisSpec(
          renderSpec: charts.NoneRenderSpec(),

      ),

      /// This is an OrdinalAxisSpec to match up with BarChart's default
      /// ordinal domain axis (use NumericAxisSpec or DateTimeAxisSpec for
      /// other charts).
      domainAxis: const charts.OrdinalAxisSpec(
        // Make sure that we draw the domain axis line.
          showAxisLine: false,
          // But don't draw anything else.
          //renderSpec: charts.NoneRenderSpec()
    ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('SUN', 5),
      OrdinalSales('MON', 25),
      OrdinalSales('TUE', 100),
      OrdinalSales('WED', 75),
      OrdinalSales('THU', 75),
      OrdinalSales('FRI', 75),
      OrdinalSales('SAT', 75),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.Color.fromHex(code: '#E7E7E7'),
        //fillColorFn: (_, __) => charts.Color.fromHex(code: '#183FCB'),
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}