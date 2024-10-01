part of 'step3_cubit.dart';

final class Step3State {
  const Step3State({
    required this.maritalStatus,
    required this.dependantNumber,
    required this.promoCode,
    required this.agentKT,
  });

  final int maritalStatus;
  final String dependantNumber;
  final String promoCode;
  final bool agentKT;

  Step3State copyWith({
    int? maritalStatus,
    String? dependantNumber,
    String? promoCode,
    bool? agentKT,
  }) {
    return Step3State(
      maritalStatus: maritalStatus ?? this.maritalStatus,
      dependantNumber: dependantNumber ?? this.dependantNumber,
      promoCode: promoCode ?? this.promoCode,
      agentKT: agentKT ?? this.agentKT,
    );
  }
}
