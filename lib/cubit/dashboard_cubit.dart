import 'package:blocc_starter/cubit/arithmetic_cubit.dart';
import 'package:blocc_starter/cubit/counter_cubit.dart';
import 'package:blocc_starter/cubit/student_cubit.dart';
import 'package:blocc_starter/view/arithmetic_bloc_view.dart';
import 'package:blocc_starter/view/counter_bloc_view.dart';
import 'package:blocc_starter/view/student_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: CounterBlocView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticBlocView(),
        ),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentBlocView(),
        ),
      ),
    );
  }
}
