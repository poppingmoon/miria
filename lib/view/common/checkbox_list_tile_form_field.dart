import 'package:flutter/material.dart';

class CheckboxListTileFormField extends FormField<bool> {
  CheckboxListTileFormField({
    super.key,
    super.onSaved,
    super.validator,
    super.initialValue,
    super.enabled,
    super.autovalidateMode,
    super.restorationId,
    MouseCursor? mouseCursor,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? checkColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    VisualDensity? visualDensity,
    FocusNode? focusNode,
    bool autofocus = false,
    ShapeBorder? shape,
    BorderSide? side,
    bool isError = false,
    Color? tileColor,
    Widget? title,
    Widget? subtitle,
    bool isThreeLine = false,
    bool? dense,
    Widget? secondary,
    bool selected = false,
    ListTileControlAffinity controlAffinity = ListTileControlAffinity.platform,
    EdgeInsetsGeometry? contentPadding,
    bool tristate = false,
    OutlinedBorder? checkboxShape,
    Color? selectedTileColor,
    void Function(bool)? onFocusChange,
    bool? enableFeedback,
    String? checkboxSemanticLabel,
  }) : super(
          builder: (state) {
            return CheckboxListTile(
              value: state.value,
              onChanged: state.didChange,
              mouseCursor: mouseCursor,
              activeColor: activeColor,
              fillColor: fillColor,
              checkColor: checkColor,
              hoverColor: hoverColor,
              overlayColor: overlayColor,
              splashRadius: splashRadius,
              materialTapTargetSize: materialTapTargetSize,
              visualDensity: visualDensity,
              focusNode: focusNode,
              autofocus: autofocus,
              shape: shape,
              side: side,
              isError: isError,
              enabled: enabled,
              tileColor: tileColor,
              title: title,
              subtitle: subtitle,
              isThreeLine: isThreeLine,
              dense: dense,
              secondary: secondary,
              selected: selected,
              controlAffinity: controlAffinity,
              contentPadding: contentPadding,
              tristate: tristate,
              checkboxShape: checkboxShape,
              selectedTileColor: selectedTileColor,
              onFocusChange: onFocusChange,
              enableFeedback: enableFeedback,
              checkboxSemanticLabel: checkboxSemanticLabel,
            );
          },
        );
}
