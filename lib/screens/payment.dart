import 'package:flutter/material.dart';
import 'package:nck_test_ui/utils/assets.dart';

import '../utils/colors.dart';
import '../widgets/custom_text_button.dart';

enum SingingCharacter { wallet, card }

enum Cards { mastercard, visa }

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  SingingCharacter? _character = SingingCharacter.wallet;
  Cards? _card = Cards.mastercard;

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
                'Payment',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        Text(
          'Select payment method',
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
              Icon(
                Icons.payment,
                color: AppColors.primaryColor,
              ),
              Text('Wallet', style: Theme.of(context).textTheme.bodyText1),
              Text(
                'NGN 22,000',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Radio<SingingCharacter>(
                value: SingingCharacter.wallet,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                activeColor: AppColors.primaryColor,
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
            children: [
              Icon(
                Icons.wallet,
                color: AppColors.primaryColor,
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              Text('Card', style: Theme.of(context).textTheme.bodyText1),
              const Spacer(),
              Radio<SingingCharacter>(
                value: SingingCharacter.card,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                activeColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 3,
        ),
        if (_character == SingingCharacter.card)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  'Select card',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Assets.mastercard,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const Spacer(),
                    Text(
                      '**** **** 5163',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Radio<Cards>(
                      value: Cards.mastercard,
                      groupValue: _card,
                      onChanged: (Cards? value) {
                        setState(() {
                          _card = value;
                        });
                      },
                      activeColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Assets.visa,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const Spacer(),
                    Text(
                      '**** **** 5163',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Radio<Cards>(
                      value: Cards.visa,
                      groupValue: _card,
                      onChanged: (Cards? value) {
                        setState(() {
                          _card = value;
                        });
                      },
                      activeColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        TextButton(
            onPressed: () {},
            child: Text(
              '+ Add new card',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: AppColors.primaryColor),
            )),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: size.width * 0.05),
          child: CustomElevatedButton(
            title: 'Pay',
            width: size.width,
            onTap: () => Navigator.of(context).pushNamed('/order'),
          ),
        ),
      ]),
    )));
  }
}
