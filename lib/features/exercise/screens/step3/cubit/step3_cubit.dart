import 'package:flutter_bloc/flutter_bloc.dart';

part 'step3_state.dart';

class Step3Cubit extends Cubit<Step3State> {
  Step3Cubit()
      : super(const Step3State(
            maritalStatus: 0,
            dependantNumber: '',
            promoCode: '',
            agentKT: false));

  void updateMaritalStatus(int index) {
    emit(state.copyWith(maritalStatus: index));
  }

  void updateDependantNumber(String dependantNumber) {
    emit(state.copyWith(dependantNumber: dependantNumber));
  }

  void updatePromoCode(String promoCode) {
    emit(state.copyWith(promoCode: promoCode));
  }

  void updateAgentKT(bool agentKT) {
    emit(state.copyWith(agentKT: agentKT));
  }
}
