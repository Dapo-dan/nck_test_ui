import 'package:flutter/material.dart';
import 'package:nck_test_ui/utils/colors.dart';

import '../widgets/custom_text_button.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.width * 0.4,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.primaryColor),
                child: Center(
                  child: Container(
                    height: size.width * 0.17,
                    width: size.width * 0.17,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: Colors.white)),
                    child: Center(
                        child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: size.width * 0.13,
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                'Order booked \nsuccesfully',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontSize: 35),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomElevatedButton(
                title: 'Home',
                width: size.width,
                onTap: () => Navigator.of(context).pushNamed('/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
