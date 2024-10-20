import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";

class ColorConverter extends JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) {
    if (!json.startsWith("#") || json.length != 7) {
      throw StateError("Invalid color format. Expected #RRGGBB");
    }
    final hex = json.substring(1);
    final r = int.parse(hex.substring(0, 2), radix: 16);
    final g = int.parse(hex.substring(2, 4), radix: 16);
    final b = int.parse(hex.substring(4, 6), radix: 16);
    return Color.fromRGBO(r, g, b, 1);
  }

  @override
  String toJson(Color object) {
    return "#${object.value.toRadixString(16).padLeft(6, "0")}";
  }
}
