import 'package:flutter/material.dart';
import 'package:expense_app/model/transections_model.dart';

class TransectionList extends StatelessWidget {
  final List<TransectionsModel> transections;

  const TransectionList({super.key, required this.transections});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transections.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(transections[index].iconData),
          title: Text(transections[index].title!),
          subtitle: Text(transections[index].subtitle!),
          trailing: Text('\$ ${transections[index].amount}'),
        );
      },
    );
  }
}