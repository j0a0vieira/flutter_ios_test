import 'package:flutter/material.dart';
import 'transaction_user.dart';

class transactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSumbit;

  transactionForm(this.onSumbit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Título'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'valor (€)'),
              controller: valueController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0.0;
                    onSumbit(title, value);
                  },
                  child: Text(
                    "Nova Transação",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
