import 'package:flutter/material.dart';
import 'package:ipetv1/constants/constants.dart';
import 'package:ipetv1/constants/ipet_dimens.dart';
import 'package:ipetv1/models/notifiers/intro_screen/intro_screen_data.dart';
import 'package:ipetv1/screens/intro_screen/components/intro_content.dart';
import 'package:ipetv1/screens/login_screen/login_screen.dart';
import 'package:ipetv1/size_config.dart';
import 'package:ipetv1/utils/animated_dot_container.dart';
import 'package:ipetv1/widgets/default_image.dart';
import 'package:ipetv1/widgets/ipet_custom_sizedbox.dart';
import 'package:ipetv1/widgets/ipet_default_button.dart';
import 'package:provider/provider.dart';

class BodyIntroScreen extends StatelessWidget {
  // int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IPetCustomSizedBox(
        width: double.infinity,
        iPetChild: Column(
          children: <Widget>[
            IPetCustomSizedBox(
              height: IPetDimens.space20,
            ),
            DefaultImage(
              image: AppConst.kIPetPawIc,
              width: IPetDimens.space200,
              height: IPetDimens.space80,
            ),
            DefaultImage(
              image: AppConst.kIPetTxtImg,
              width: 200,
              height: 80,
            ),
            Expanded(
              flex: 3,
              child: Consumer<IntroScreenData>(
                builder: (context, introScreenData, child) {
                  return PageView.builder(
                    onPageChanged: (value) {
                      introScreenData.changeDotSize(value);
                    },
                    // itemCount: introData.length,
                    itemCount: introScreenData.introCount,
                    itemBuilder: (context, index) => IntroContent(
                      image: introScreenData.introData[index]["image"],
                      text: introScreenData.introData[index]['text'],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                Provider.of<IntroScreenData>(context).introCount,
                (index) => AnimatedDotContainer(index: index),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        getProportionateScreenWidth(IPetDimens.space20)),
                child: Column(
                  children: <Widget>[
                    // Spacer(),
                    Spacer(flex: 2),
                    // DefaultButton(
                    //   text: AppConst.kContinueTxt,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(IPetDimens.space10),
                    //   ),
                    //   press: () {
                    //     // Navigator.pushNamed(context, SignInScreen.routeName);
                    //     Navigator.pushNamed(context, IPetLoginScreen.routeName);
                    //   },
                    // ),

                    IPetDefaultButton(
                      onTap: () {
                        Navigator.pushNamed(context, IPetLoginScreen.id);
                      },
                      buttonTitle: AppConst.kContinueTxt,
                      colour: AppConst.kPrimaryColor,
                      height: getProportionateScreenHeight(56),
                      width: double.infinity,
                      textColour: AppConst.kPrimaryWhiteBgColor,
                      myBorderRadius: BorderRadius.circular(
                        IPetDimens.space10,
                      ),
                      iPetBoxShadow: [
                        AppConst.iPetLoginBoxShadow(
                          btnColor: AppConst.kPrimaryColor
                              .withOpacity(0.6), // changes position of shadow
                        ),
                      ],
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
