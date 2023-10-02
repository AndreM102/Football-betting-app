import 'package:flutter/material.dart';

class BetState {
  BetState._();

  static final _instance = BetState._();

  factory BetState() => _instance;

  ValueNotifier<bool> isLight = ValueNotifier(true);
}
