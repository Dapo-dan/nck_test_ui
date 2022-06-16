import 'package:flutter/material.dart';
import 'package:nck_test_ui/utils/assets.dart';

import '../utils/colors.dart';
import '../widgets/custom_text_button.dart';

enum SingingCharacter { swapCylinder, newCylinder }

class PurchaseOrderPage extends StatefulWidget {
  const PurchaseOrderPage({Key? key}) : super(key: key);

  @override
  State<PurchaseOrderPage> createState() => _PurchaseOrderPageState();
}

class _PurchaseOrderPageState extends State<PurchaseOrderPage> {
  SingingCharacter? _character = SingingCharacter.swapCylinder;

  List<DropdownMenuItem<String>> get cylinderWeights {
    List<DropdownMenuItem<String>> cylinderWeight = [
      const DropdownMenuItem(value: "3 kg", child: Text("3 kg")),
      const DropdownMenuItem(value: "5 kg", child: Text("5 kg")),
      const DropdownMenuItem(value: "10 kg", child: Text("10 kg")),
      const DropdownMenuItem(value: "12.5 kg", child: Text("12.5 kg")),
      const DropdownMenuItem(value: "25 kg", child: Text("25 kg")),
      const DropdownMenuItem(value: "50 kg", child: Text("50 kg")),
    ];
    return cylinderWeight;
  }

  List<DropdownMenuItem<String>> get number {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "00", child: Text("00")),
      const DropdownMenuItem(value: "01", child: Text("01")),
      const DropdownMenuItem(value: "02", child: Text("02")),
      const DropdownMenuItem(value: "03", child: Text("03")),
      const DropdownMenuItem(value: "04", child: Text("04")),
      const DropdownMenuItem(value: "05", child: Text("05")),
    ];
    return menuItems;
  }

  String cylinderValue = "3 kg";
  String numberValue = "00";

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
                      'Purchase Order',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
              Text(
                'Select your order preference',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.left,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.38,
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.02),
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.05),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: Colors.grey.shade400),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.swapcylinder,
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          const Text(
                            'Swap Cylinder',
                          ),
                          const Spacer(),
                          Radio<SingingCharacter>(
                            value: SingingCharacter.swapCylinder,
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
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.02),
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.05),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: Colors.grey.shade400),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.newcylinder,
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          const Text(
                            'New Cylinder',
                          ),
                          const Spacer(),
                          Radio<SingingCharacter>(
                              value: SingingCharacter.newCylinder,
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
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cylinder Weight',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    value: cylinderValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        cylinderValue = newValue!;
                                      });
                                    },
                                    items: cylinderWeights)
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Number',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    value: numberValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        numberValue = newValue!;
                                      });
                                    },
                                    items: number)
                              ],
                            ),
                          )
                        ])
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '+ Add order',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: AppColors.primaryColor),
                  )),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: size.width * 0.05),
                child: CustomElevatedButton(
                  title: 'Continue',
                  width: size.width,
                  onTap: () =>
                      Navigator.of(context).pushNamed('/delivery_address'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
