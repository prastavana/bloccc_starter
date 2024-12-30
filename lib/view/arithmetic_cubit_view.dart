import 'package:blocc_starter/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  ArithmeticCubitView({super.key});

  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First number input
            TextField(
              controller: firstNumberController,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            // Second number input
            TextField(
              controller: secondNumberController,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final num1 = int.tryParse(firstNumberController.text) ?? 0;
                final num2 = int.tryParse(secondNumberController.text) ?? 0;
                context.read<ArithmeticCubit>().add(num1, num2);
              },
              child: const Text("Add"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final num1 = int.tryParse(firstNumberController.text) ?? 0;
                final num2 = int.tryParse(secondNumberController.text) ?? 0;
                context.read<ArithmeticCubit>().subtract(num1, num2);
              },
              child: const Text("Subtract"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final num1 = int.tryParse(firstNumberController.text) ?? 0;
                final num2 = int.tryParse(secondNumberController.text) ?? 0;
                context.read<ArithmeticCubit>().multiply(num1, num2);
              },
              child: const Text("Multiply"),
            ),
          ],
        ),
      ),
    );
  }
}
