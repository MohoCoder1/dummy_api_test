import 'package:dummy_api_test/domain/entities/i_dimensions.dart';

class Dimensions extends IDimensions {
  Dimensions({
    required super.width,
    required super.height,
    required super.depth,
  });
  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      width: json['width']?.toDouble() ?? 0.0,
      height: json['height']?.toDouble() ?? 0.0,
      depth: json['depth']?.toDouble() ?? 0.0,
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
      'depth': depth,
    };
  }
}
