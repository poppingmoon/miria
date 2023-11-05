import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miria/model/tab_setting.dart';

part 'timeline_page_state.freezed.dart';

@freezed
class TimelinePageState with _$TimelinePageState {
  const factory TimelinePageState({
    required PageController pageController,
    required int index,
    required TabSetting tabSetting,
  }) = _TimelinePageState;
  const TimelinePageState._();
}
