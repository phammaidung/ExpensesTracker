import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        categories: Category.work),
    Expense(
        title: 'Cinema: Detective Conan',
        amount: 11.99,
        date: DateTime.now(),
        categories: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('The chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
      ],
    ));
  }
}
