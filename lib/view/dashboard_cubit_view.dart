import 'package:blocc_starter/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
              child: InkWell(
            onTap: () {
              context.read<DashboardCubit>().openCounterView(context);
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add, size: 48),
                Text('Counter Cubit'),
              ],
            ),
          )),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openArithmeticView(context);
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.calculate, size: 48),
                  Text('Arithmetic Cubit'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openStudentView(context);
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person, size: 48),
                  Text('Student Cubit'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.calculate, size: 48),
                  Text('Simple Interest Cubit'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.circle, size: 48),
                  Text('Area of Circle Cubit'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.rectangle, size: 48),
                  Text('Perimeter of Rectangle'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
