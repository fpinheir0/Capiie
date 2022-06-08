import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white38,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              // Max Size
              Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  color: Color(0xFF8185E2),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                ),
                child: Container(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: ToggleSwitch(
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              activeBgColor: [Colors.white],
                              activeFgColor: Color(0xFF8185E2),
                              minWidth: 90,
                              inactiveFgColor: Colors.white,
                              cornerRadius: 10.0,
                              labels: ['weekly', 'monthly'],
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Super Awesome",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24.0,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "AVERAGE MOOD     37%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.white38),
                              ),
                            ],
                          ),
                          sample2(context),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "• CURRENT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "• PREVIOUS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xFF5F62A8)),
                              ),
                            ],
                          )
                        ])),
              ),
              Positioned(
                top: 550.0,
                left: 15.0,
                right: 15.0,
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0, top: 26),
                            child: Text(
                              "This week",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 26.0, bottom: 26),
                            child: Text(
                              'May 4 - May 10',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      new Spacer(),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black87,
                        size: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black45,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget sample2(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          bezierChartScale: BezierChartScale.CUSTOM,
          xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
          series: const [
            BezierLine(
              label: "Custom 1",
              lineStrokeWidth: 4.0,
              data: const [
                DataPoint<double>(value: 10, xAxis: 0),
                DataPoint<double>(value: 130, xAxis: 5),
                DataPoint<double>(value: 50, xAxis: 10),
                DataPoint<double>(value: 150, xAxis: 15),
                DataPoint<double>(value: 75, xAxis: 20),
                DataPoint<double>(value: 0, xAxis: 25),
                DataPoint<double>(value: 5, xAxis: 30),
                DataPoint<double>(value: 45, xAxis: 35),
              ],
            ),
            BezierLine(
              lineColor: Color(0xFF5F62A8),
              lineStrokeWidth: 4.0,
              label: "Custom 2",
              data: const [
                DataPoint<double>(value: 5, xAxis: 0),
                DataPoint<double>(value: 50, xAxis: 5),
                DataPoint<double>(value: 30, xAxis: 10),
                DataPoint<double>(value: 30, xAxis: 15),
                DataPoint<double>(value: 50, xAxis: 20),
                DataPoint<double>(value: 40, xAxis: 25),
                DataPoint<double>(value: 10, xAxis: 30),
                DataPoint<double>(value: 30, xAxis: 35),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 4.0,
            verticalIndicatorColor: Colors.black12,
            bubbleIndicatorColor: Color(0xFF5F62A8),
            xLinesColor: Color(0xFF5F62A8),
            contentWidth: MediaQuery.of(context).size.width * 2,
          ),
        ),
      ),
    );
  }
}
