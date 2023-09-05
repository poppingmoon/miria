const _time2000 = 946684800000;
const _meidOffset = 0x800000000000;
const _base32Chars = "0123456789abcdefghijklmnopqrstuv";
const _crockfordsBase32Chars = "0123456789ABCDEFGHJKMNPQRSTVWXYZ";

BigInt _parseCrockfordsBase32(String str) {
  return BigInt.parse(
    str
        .split("")
        .map((s) => _base32Chars[_crockfordsBase32Chars.indexOf(s)])
        .join(),
    radix: 32,
  );
}

String _toCrockfordsBase32(BigInt i) {
  return i
      .toRadixString(32)
      .split("")
      .map((s) => _crockfordsBase32Chars[_base32Chars.indexOf(s)])
      .join();
}

enum IdGenMethod {
  /// [2000年からの経過ミリ秒 (base36, 8桁)] + [ランダム (base36, 2桁)]
  aid,

  /// [エポックミリ秒 + 0x8000_0000_0000 (hex, 12桁)] + [ランダム (hex, 12桁)]
  meid,

  /// [g] + [エポックミリ秒 (hex, 11桁)] + [ランダム (hex, 12桁)]
  meidg,

  /// [エポックミリ秒 (Crockford's base32, 10桁)] + [ランダム (Crockford's base32, 16桁)]
  ulid,

  /// [エポック秒 (hex, 8桁)] + [ランダム (hex, 16桁)]
  objectid,
}

class Id {
  Id({
    required this.method,
    required this.date,
    required this.random,
  })  : assert(random >= BigInt.zero),
        assert(
          (method == IdGenMethod.aid && random < BigInt.from(36).pow(2)) ||
              ((method == IdGenMethod.meid || method == IdGenMethod.meidg) &&
                  random < BigInt.from(16).pow(12)) ||
              (method == IdGenMethod.ulid &&
                  random < BigInt.from(32).pow(16)) ||
              (method == IdGenMethod.objectid &&
                  random < BigInt.from(16).pow(16)),
        );

  final IdGenMethod method;
  final DateTime date;
  final BigInt random;

  static Id parse(String str) {
    final length = str.length;
    if (length == 10) {
      return Id(
        method: IdGenMethod.aid,
        date: DateTime.fromMillisecondsSinceEpoch(
          int.parse(str.substring(0, 8), radix: 36) + _time2000,
        ),
        random: BigInt.parse(str.substring(8), radix: 36),
      );
    }
    if (length == 24) {
      if (str[0] == "8") {
        return Id(
          method: IdGenMethod.meid,
          date: DateTime.fromMillisecondsSinceEpoch(
            int.parse(str.substring(0, 12), radix: 16) - _meidOffset,
          ),
          random: BigInt.parse(str.substring(12), radix: 16),
        );
      }
      if (str[0] == "g") {
        return Id(
          method: IdGenMethod.meidg,
          date: DateTime.fromMillisecondsSinceEpoch(
            int.parse(str.substring(1, 12), radix: 16),
          ),
          random: BigInt.parse(str.substring(12), radix: 16),
        );
      }
      return Id(
        method: IdGenMethod.objectid,
        date: DateTime.fromMillisecondsSinceEpoch(
          int.parse(str.substring(0, 8), radix: 16) * 1000,
        ),
        random: BigInt.parse(str.substring(8), radix: 16),
      );
    }
    if (length == 26) {
      return Id(
        method: IdGenMethod.ulid,
        date: DateTime.fromMillisecondsSinceEpoch(
          _parseCrockfordsBase32(str.substring(0, 10)).toInt(),
        ),
        random: _parseCrockfordsBase32(str.substring(10)),
      );
    }
    throw Exception("IDの形式が不明です");
  }

  @override
  String toString() {
    final epochMillis = date.millisecondsSinceEpoch;
    switch (method) {
      case IdGenMethod.aid:
        final timeStr =
            (epochMillis - _time2000).toRadixString(36).padLeft(8, "0");
        final randomStr = random.toRadixString(36).padLeft(2, "0");
        return "$timeStr$randomStr";
      case IdGenMethod.meid:
        final timeStr =
            (epochMillis + _meidOffset).toRadixString(16).padLeft(12, "0");
        final randomStr = random.toRadixString(16).padLeft(12, "0");
        return "$timeStr$randomStr";
      case IdGenMethod.meidg:
        final timeStr = epochMillis.toRadixString(16).padLeft(11, "0");
        final randomStr = random.toRadixString(16).padLeft(12, "0");
        return "g$timeStr$randomStr";
      case IdGenMethod.ulid:
        final timeStr =
            _toCrockfordsBase32(BigInt.from(epochMillis)).padLeft(10, "0");
        final randomStr = _toCrockfordsBase32(random).padLeft(16, "0");
        return "$timeStr$randomStr";
      case IdGenMethod.objectid:
        final timeStr = (epochMillis ~/ 1000).toRadixString(16).padLeft(8, "0");
        final randomStr = random.toRadixString(16).padLeft(16, "0");
        return "$timeStr$randomStr";
    }
  }
}
