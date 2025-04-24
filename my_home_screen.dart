import 'package:expense_app/model/transections_model.dart';
import 'package:expense_app/screens/account_manage.dart';
import 'package:expense_app/screens/credit_card.dart';
import 'package:expense_app/screens/current_acount.dart';
import 'package:expense_app/screens/transection_list.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 224, 245),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/200')),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // current account section
          const CurrentAcount(),
          // cards
          const CreditCard(),
          const SizedBox(
            height: 18,
          ),
          // account manage
          const AccountManage(),
          const SizedBox(
            height: 18,
          ),
          // transactions
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.blue),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Expanded(
            child: TransectionList(transections: [
              TransectionsModel(
                  title: 'Spocify Premium',
                  subtitle: 'Expense',
                  iconData: Icons.cases,
                  amount: 9.99),
              TransectionsModel(
                  title: 'Salary',
                  subtitle: 'Income',
                  iconData: Icons.money,
                  amount: 5384.99),
              TransectionsModel(
                  title: 'Electricity',
                  subtitle: 'Expense',
                  iconData: Icons.electric_meter_sharp,
                  amount: 58.99),
            ]),
          ),
        ],
      ),
    );
  }
}
