import 'package:misskey_dart/misskey_dart.dart';

extension UserExtension on User {
  String get acct {
    return "@$username${host != null ? "@$host" : ""}";
  }
}

extension UserDetailedExtension on UserDetailed {
  bool get isFfVisibleForMe {
    if (this is MeDetailed) {
      return true;
    }

    final user = this;

    return switch (ffVisibility) {
      FFVisibility.public => true,
      FFVisibility.followers =>
        user is UserDetailedNotMeWithRelations && user.isFollowing,
      FFVisibility.private => false,
    };
  }
}
