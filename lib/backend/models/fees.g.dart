// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fees _$FeesFromJson(Map<String, dynamic> json) => Fees(
      label: json['label'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      status: $enumDecodeNullable(_$PaymentStatusEnumMap, json['status']) ??
          PaymentStatus.unpaid,
      startDate: json['startDate'] as String? ?? '',
      endDate: json['endDate'] as String? ?? '',
    );

Map<String, dynamic> _$FeesToJson(Fees instance) => <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      'status': _$PaymentStatusEnumMap[instance.status],
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.paid: 'paid',
  PaymentStatus.unpaid: 'unpaid',
};
