import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fees.g.dart';

enum PaymentStatus {
  paid,
  unpaid,
}

extension PaymentStatusExtension on PaymentStatus {
  String get label {
    switch (this) {
      case PaymentStatus.paid:
        return 'PAID';
      case PaymentStatus.unpaid:
        return 'UNPAID';
    }
  }
}

extension PaymentStatusColorExtension on PaymentStatus {
  Color get color {
    switch (this) {
      case PaymentStatus.paid:
        return Colors.green;
      case PaymentStatus.unpaid:
        return Colors.red;
    }
  }
}

@JsonSerializable()
class Fees {
  final String label;
  final int amount;
  final PaymentStatus status;
  final String startDate;
  final String endDate;

  Fees({
    this.label = '',
    this.amount = 0,
    this.status = PaymentStatus.unpaid,
    this.startDate = '',
    this.endDate = '',
  });

  factory Fees.fromJson(Map<String, dynamic> json) => _$FeesFromJson(json);

  Map<String, dynamic> toJson() => _$FeesToJson(this);
}
