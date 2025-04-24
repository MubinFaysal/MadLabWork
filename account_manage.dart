import 'package:flutter/material.dart';

class AccountManage extends StatelessWidget {
  const AccountManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * .95,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Card(
          elevation: 10,
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(5)),
              child: const Text(
                'VISA',
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: const Text('Current Account'),
            subtitle: const Text('....2183'),
            trailing: Container(
              height: 25,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(12)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Manage',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp,
                      size: 13, color: Colors.white),
                ],
              ),
            ),
            // trailing: ElevatedButton.icon(
            //   onPressed: () {},
            //   label: const Text('Manage'),
            //   icon: const Icon(Icons.arrow_forward_ios_sharp),
            // ),
          ),
        ),
      ),
    );
  }
}


// 3 : 59 