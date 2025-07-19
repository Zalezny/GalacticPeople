import 'package:freezed_annotation/freezed_annotation.dart';

enum GenderType implements GenderTypeIcon {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
  @JsonValue('n/a')
  nA,
  @JsonValue('none')
  none,
  @JsonValue('hermaphrodite')
  hermaphrodite;

  @override
  String icon() => switch (this) {
    GenderType.male => '👨',
    GenderType.female => '👩',
    _ => '🤖',
  };
}

abstract class GenderTypeIcon implements Enum {
  String icon();
}
