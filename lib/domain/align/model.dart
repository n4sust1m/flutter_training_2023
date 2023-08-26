import 'package:flutter/material.dart';

enum AlignDirection {
  start,
  center,
  end,
}

MainAxisAlignment toMainAxisAlignment(AlignDirection ad) {
  switch (ad) {
    case AlignDirection.start:
      return MainAxisAlignment.start;
    case AlignDirection.center:
      return MainAxisAlignment.center;
    case AlignDirection.end:
      return MainAxisAlignment.end;
    default:
      throw Error();
  }
}
