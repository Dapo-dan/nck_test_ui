import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custom_text_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.black)),
                  child: const Center(child: Icon(Icons.arrow_back_ios)),
                ),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Text(
                'Checkout',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        Text(
          'Order summary',
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.left,
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01),
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.grey.shade200,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order 1',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'Swap Cylinder',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '3.2kg * 1 Qty',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(fontSize: 20),
                  ),
                ],
              ),
              Text(
                'NGN 1,200',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01),
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.grey.shade200,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order 2',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'New Cylinder',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '6.5kg * 4 Qty',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(fontSize: 20),
                  ),
                ],
              ),
              Text(
                'NGN 6,200',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.03),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'NGN 7,400',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Text(
          'Delivery address',
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.left,
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01),
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.grey.shade200,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '32b Oxley Street, Ilage Lekki Lagos',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'Change',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: size.width * 0.05),
          child: CustomElevatedButton(
            title: 'Payment',
            width: size.width,
            onTap: () => Navigator.of(context).pushNamed('/payment'),
          ),
        ),
      ]),
    )));
  }
}
