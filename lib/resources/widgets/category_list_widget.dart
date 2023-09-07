import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      runAlignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 13,
      runSpacing: 10,
      children: [
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 85,
          width: 85,
          child: Card(
            child: InkWell(
              child: Center(
                child: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
