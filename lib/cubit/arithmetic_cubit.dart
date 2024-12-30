import 'package:bloc/bloc.dart';

// Define the cubit state
class ArithmeticState {
  final int result;

  ArithmeticState({required this.result});
}

// Define the Arithmetic Cubit
class ArithmeticCubit extends Cubit<ArithmeticState> {
  ArithmeticCubit() : super(ArithmeticState(result: 0));

  // Method to handle addition
  void add(int num1, int num2) {
    emit(ArithmeticState(result: num1 + num2));
  }

  // Method to handle subtraction
  void subtract(int num1, int num2) {
    emit(ArithmeticState(result: num1 - num2));
  }

  // Method to handle multiplication
  void multiply(int num1, int num2) {
    emit(ArithmeticState(result: num1 * num2));
  }
}
