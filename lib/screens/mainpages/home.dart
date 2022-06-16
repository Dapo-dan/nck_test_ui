import 'package:flutter/material.dart';
import 'package:nck_test_ui/utils/assets.dart';
import 'package:nck_test_ui/utils/colors.dart';
import 'package:nck_test_ui/widgets/custom_text_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.3,
            color: AppColors.primaryColor,
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.width * 0.1),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: size.width * 0.065,
                          child: CircleAvatar(
                            backgroundImage: const NetworkImage(
                                'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg'),
                            backgroundColor: Colors.transparent,
                            radius: size.width * 0.06,
                          ),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Text(
                          'Paul N.',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        Container(
                          width: size.width * 0.1,
                          height: size.width * 0.1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.notifications_none,
                            color: AppColors.primaryColor,
                            size: size.width * 0.06,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(size.width * 0.05),
                      width: size.width,
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Colors.orange.shade300,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(size.width * 0.01),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.orange.shade100,
                                ),
                                child: Text(
                                  'Cylinder ID: #942',
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline
                                      ?.copyWith(fontSize: 15),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: '25',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: 'kg',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            ?.copyWith(color: Colors.white),
                                      )
                                    ]),
                              ),
                              Container(
                                padding: EdgeInsets.all(size.width * 0.01),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.orange.shade100,
                                ),
                                child: Text(
                                  'Last purchase was 2 hours ago',
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline
                                      ?.copyWith(
                                          fontSize: 12,
                                          color: AppColors.primaryColor),
                                ),
                              )
                            ],
                          ),
                          Image.asset(
                            Assets.swapcylinder,
                            height: size.height * 0.15,
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: size.width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          title: 'Add Cylinder',
                          width: size.width * 0.4,
                          onTap: () =>
                              Navigator.of(context).pushNamed('/top_up'),
                        ),
                        CustomElevatedButton(
                          title: 'Top Up',
                          width: size.width * 0.4,
                          onTap: () =>
                              Navigator.of(context).pushNamed('/top_up'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Activity',
                                style: Theme.of(context).textTheme.bodyText2),
                            Text(
                              'view all >',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: AppColors.primaryColor),
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              _activity(context, 'Swap Order', Assets.oando),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 2,
                              ),
                              _activity(context, 'Swap Order', Assets.oando),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 2,
                              ),
                              _activity(context, 'New Order', Assets.ap),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _activity(BuildContext context, String title, String image) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: Row(
        children: [
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '17 August 2021',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 20),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '-N 4,500',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
