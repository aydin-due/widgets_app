import 'package:flutter/material.dart';
import 'package:widgets_app/theme/appTheme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('si'),
            leading: Icon(
              Icons.account_balance_wallet_rounded,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                'iván t amo eres el amor d mi vida no m dejes nunk y bésame x fabor lo necesito mmm q precioso tas q bárbaro<333'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancelar"),
              ),
              TextButton(onPressed: () {}, child: const Text("OK"))
            ]),
          )
        ],
      ),
    );
  }
}
