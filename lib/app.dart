import 'package:blocc_starter/cubit/arithmetic_cubit.dart';
import 'package:blocc_starter/cubit/counter_cubit.dart';
import 'package:blocc_starter/cubit/dashboard_cubit.dart';
import 'package:blocc_starter/cubit/student_cubit.dart';
import 'package:blocc_starter/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ArithmeticCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<CounterCubit>(),
            context.read<ArithmeticCubit>(),
            context.read<StudentCubit>(),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter BLoC',
        home: DashboardView(),
      ),
    );
  }
}
