import 'package:dummy_api_test/domain/entities/i_meta.dart';

class Meta extends IMeta {
  Meta({
    required super.createdAt,
    required super.updatedAt,
    required super.barcode,
    required super.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      barcode: json['barcode'] ?? '',
      qrCode: json['qrCode'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'barcode': barcode,
      'qrCode': qrCode,
    };
  }
}
