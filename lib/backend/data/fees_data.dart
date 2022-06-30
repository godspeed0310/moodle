import 'package:moodle/backend/models/fees.dart';

List<Fees> feesData = [
  Fees(
    label: '1st Installment',
    amount: 4480,
    status: PaymentStatus.paid,
    startDate: '01 Apr',
    endDate: '31 May',
  ),
  Fees(
    label: '2nd Installment',
    amount: 4480,
    status: PaymentStatus.paid,
    startDate: '01 Jun',
    endDate: '31 Jul',
  ),
  Fees(
    label: '3rd Installment',
    amount: 4480,
    status: PaymentStatus.unpaid,
    startDate: '01 Aug',
    endDate: '31 Sep',
  ),
  Fees(
    label: '4th Installment',
    amount: 4480,
    status: PaymentStatus.unpaid,
    startDate: '01 Oct',
    endDate: '31 Nov',
  ),
  Fees(
    label: '5th Installment',
    amount: 4480,
    status: PaymentStatus.unpaid,
    startDate: '01 Dec',
    endDate: '31 Jan',
  ),
  Fees(
    label: '6th Installment',
    amount: 4480,
    status: PaymentStatus.unpaid,
    startDate: '01 Feb',
    endDate: '31 Mar',
  ),
];
