import 'package:flutter/material.dart';

enum PatternSection {
  data("1. Data");

  final String title;

  const PatternSection(this.title);
}

enum Pattern {
  restApi(PatternSection.data, "Rest API", Placeholder());

  final PatternSection section;
  final String title;
  final Widget screen;

  const Pattern(this.section, this.title, this.screen);
}
