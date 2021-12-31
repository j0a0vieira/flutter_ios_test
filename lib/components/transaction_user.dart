import 'dart:math';

import 'package:despesas_pessoais/components/transaction_form.dart';
import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class transactionUser extends StatefulWidget {
  @override
  _transactionUserState createState() => _transactionUserState();
}

class _transactionUserState extends State<transactionUser> {
  final _transactions = [
    new Transaction(
      id: 't1',
      title: 'novo tenis de corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    ),
    new Transaction(
      id: 't2',
      title: 'novo tenis de porradasdada',
      value: 220.76,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        transactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
