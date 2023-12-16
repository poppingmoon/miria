import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:misskey_dart/misskey_dart.dart';

extension ReactionAcceptanceExtension on ReactionAcceptance {
  String displayName(BuildContext context) {
    return switch (this) {
      ReactionAcceptance.likeOnlyForRemote => S.of(context).likeOnlyForRemote,
      ReactionAcceptance.nonSensitiveOnly => S.of(context).nonSensitiveOnly,
      ReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote =>
        S.of(context).nonSensitiveOnlyForLocalLikeOnlyForRemote,
      ReactionAcceptance.likeOnly => S.of(context).likeOnly,
    };
  }
}
