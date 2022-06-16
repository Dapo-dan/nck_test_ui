import 'package:flutter/material.dart';
import 'package:nck_test_ui/utils/assets.dart';
import 'package:nck_test_ui/utils/colors.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

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
                      'Top Up',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
              Text(
                'Select Retailer you wish to purchase from',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              _retailer(context, Colors.grey.shade900, 'Oando Petrol Station',
                  Assets.oando),
              _retailer(context, AppColors.primaryColor, 'Total Retail',
                  Assets.total),
              _retailer(
                  context, Colors.grey.shade900, 'Enyo Retail', Assets.enyo),
              _retailer(
                  context, AppColors.primaryColor, 'AP Gas Station', Assets.ap),
            ],
          ),
        ),
      ),
    );
  }

  Widget _retailer(
      BuildContext context, Color color, String title, String image) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/purchase_order'),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: color,
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Text(title, style: Theme.of(context).textTheme.headline5),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
