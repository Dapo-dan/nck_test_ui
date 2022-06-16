import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custom_text_button.dart';

enum SingingCharacter { firstAddress, secondAddress }

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  SingingCharacter? _character = SingingCharacter.firstAddress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    'Delivery Address',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            Text(
              'Select delivery address',
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
                  const Spacer(),
                  Radio<SingingCharacter>(
                    value: SingingCharacter.firstAddress,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '32b Oxley Street, Ilage Lekki Lagos...',
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
                  const Spacer(),
                  Radio<SingingCharacter>(
                      value: SingingCharacter.secondAddress,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                      activeColor: AppColors.primaryColor),
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  '+ Add address',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: AppColors.primaryColor),
                )),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: size.width * 0.05),
              child: CustomElevatedButton(
                title: 'Checkout',
                width: size.width,
                onTap: () => Navigator.of(context).pushNamed('/check_out'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
