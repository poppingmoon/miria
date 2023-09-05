import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:miria/model/id.dart';

BigInt randomBigInt(int bits) {
  if (bits <= 32) {
    return BigInt.from(Random().nextInt(1 << bits));
  }
  return (BigInt.from(Random().nextInt(1 << 32)) << (bits - 32)) +
      randomBigInt(bits - 32);
}

void main() {
  test("aid", () {
    final date = DateTime.now();
    final random = BigInt.from(Random().nextInt(36 * 36));
    final aid = Id(
      method: IdGenMethod.aid,
      date: date,
      random: random,
    ).toString();
    final parsed = Id.parse(aid);
    assert(aid.length == 10);
    assert(parsed.method == IdGenMethod.aid);
    assert(
      parsed.date.millisecondsSinceEpoch == date.millisecondsSinceEpoch,
    );
    assert(parsed.random == random);
    assert(parsed.toString() == aid);
  });

  test("meid", () {
    final date = DateTime.now();
    final random = randomBigInt(4 * 12);
    final meid = Id(
      method: IdGenMethod.meid,
      date: date,
      random: random,
    ).toString();
    final parsed = Id.parse(meid);
    assert(meid.length == 24);
    assert(parsed.method == IdGenMethod.meid);
    assert(
      parsed.date.millisecondsSinceEpoch == date.millisecondsSinceEpoch,
    );
    assert(parsed.random == random);
    assert(parsed.toString() == meid);
  });

  test("meidg", () {
    final date = DateTime.now();
    final random = randomBigInt(4 * 12);
    final meidg = Id(
      method: IdGenMethod.meidg,
      date: date,
      random: random,
    ).toString();
    final parsed = Id.parse(meidg);
    assert(meidg.length == 24);
    assert(parsed.method == IdGenMethod.meidg);
    assert(
      parsed.date.millisecondsSinceEpoch == date.millisecondsSinceEpoch,
    );
    assert(parsed.random == random);
    assert(parsed.toString() == meidg);
  });

  test("ulid", () {
    final date = DateTime.now();
    final random = randomBigInt(5 * 16);
    final ulid = Id(
      method: IdGenMethod.ulid,
      date: date,
      random: random,
    ).toString();
    final parsed = Id.parse(ulid);
    assert(ulid.length == 26);
    assert(parsed.method == IdGenMethod.ulid);
    assert(
      parsed.date.millisecondsSinceEpoch == date.millisecondsSinceEpoch,
    );
    assert(parsed.random == random);
    assert(parsed.toString() == ulid);
  });

  test("objectid", () {
    final date = DateTime.now();
    final random = randomBigInt(4 * 16);
    final objectid = Id(
      method: IdGenMethod.objectid,
      date: date,
      random: random,
    ).toString();
    final parsed = Id.parse(objectid);
    assert(objectid.length == 24);
    assert(parsed.method == IdGenMethod.objectid);
    assert(
      parsed.date.millisecondsSinceEpoch ~/ 1000 ==
          date.millisecondsSinceEpoch ~/ 1000,
    );
    assert(parsed.random == random);
    assert(parsed.toString() == objectid);
  });
}
