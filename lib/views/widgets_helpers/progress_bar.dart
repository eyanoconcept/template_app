import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBar extends LinearPercentIndicator{

  ProgressBar({percent: 0.2, lineHeight:8.0, width: 100.0 , progressColor: const Color.fromRGBO(26, 55, 123,1,), alignment: MainAxisAlignment.center, text: null }):
      super(
          width: width,
          lineHeight: lineHeight,
          percent: percent,
          progressColor: progressColor,
          alignment: alignment,
          center: text
      );
}