import 'package:flutter/material.dart';
import 'package:ipetv1/constants/constants.dart';
import 'package:ipetv1/constants/ipet_dimens.dart';
import 'package:ipetv1/screens/home_screen/ipet_home_screen.dart';
import 'package:ipetv1/widgets/country_picker/country_picker.dart';
import 'package:ipetv1/widgets/default_image.dart';
import 'package:ipetv1/widgets/ipet_custom_painter/ipet_sharp_divider/sharp_hor_divider.dart';
import 'package:ipetv1/widgets/ipet_custom_sizedbox.dart';
import 'package:ipetv1/widgets/ipet_default_button.dart';
import 'package:ipetv1/widgets/label.dart';
import 'package:ipetv1/widgets/my_custom_card.dart';

import '../../home_screen/home_test.dart';
import '../../home_screen/ipet_home_screen.dart';
import '../../home_screen/ipet_home_screen.dart';
import '../../home_screen/ipet_home_screen.dart';
import '../../intro_screen/intro_screen.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: IPetCustomSizedBox(
          width: double.infinity,
          iPetChild: Center(
            child: Column(
              children: <Widget>[
                DefaultImage(
                  image: AppConst.kIPetPawIc,
                  width: IPetDimens.space200,
                  height: IPetDimens.space80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: IPetDimens.space20),
                      child: Label(
                        text: AppConst.kLoginTo,
                        textColor: AppConst.kTextRareGoldColor,
                        fontWeight: FontWeight.bold,
                        size: 20.0,
                      ),
                    ),
                    DefaultImage(
                      image: AppConst.kIPetTxtImg,
                      width: IPetDimens.space120,
                      height: IPetDimens.space50,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: IPetDimens.space20),
                      child: Label(
                        text: AppConst.kPhoneNoTxt,
                        textColor: AppConst.kTextDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IPetCustomSizedBox(height: IPetDimens.space20),
                        MyCustomCard(
                          iPetBoxShadow: [
                            AppConst.iPetLoginBoxShadow(
                              btnColor: Colors.grey.withOpacity(0.2),
                            ),
                          ],
                          childCard: CountryPicker(),
                          colour: AppConst.kPrimarySemiWhiteColor,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: IPetDimens.space20),
                            child: MyCustomCard(
                              iPetBoxShadow: [
                                AppConst.iPetLoginBoxShadow(
                                  btnColor: Colors.grey.withOpacity(0.2),
                                ),
                              ],
                              colour: AppConst.kPrimarySemiWhiteColor,
                              childCard: Padding(
                                padding: const EdgeInsets.only(
                                  left: IPetDimens.space10,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    fillColor: AppConst.kPrimarySemiWhiteColor,
                                    filled: true,
                                    border: InputBorder.none,
                                    hintText: AppConst.kPleaseEnterPhoneNoTxt,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IPetCustomSizedBox(height: IPetDimens.space12),
                    Padding(
                      padding: const EdgeInsets.only(left: IPetDimens.space20),
                      child: Label(
                        text: AppConst.kPhoneCallOrTxtMsg,
                        textColor: AppConst.kTextDarkColor,
                        size: IPetDimens.space12,
                      ),
                    ),
                    IPetDefaultButton(
                      onTap: () {},
                      buttonTitle: AppConst.kLoginPhoneNoTxt,
                      colour: AppConst.kTextLightRedColor,
                      height: IPetDimens.space50,
                      width: IPetDimens.space50,
                      textColour: AppConst.kPrimaryWhiteBgColor,
                      myBorderRadius: BorderRadius.circular(
                        IPetDimens.space5,
                      ),
                      iPetBoxShadow: [
                        AppConst.iPetLoginBoxShadow(
                          btnColor: AppConst.kTextLightRedColor
                              .withOpacity(0.6), // changes position of shadow
                        ),
                      ],
                    ),
                    IPetCustomSizedBox(height: IPetDimens.space10),
                    Container(
                      margin: EdgeInsets.only(top: IPetDimens.space10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Container(
                              margin: const EdgeInsets.only(
                                left: IPetDimens.space10,
                                right: IPetDimens.space20,
                              ),
                              // child: Divider(
                              //   color: AppConst.kTextDarkColor,
                              //   height: IPetDimens.space36,
                              // ),
                              child: IPetSharpDivider(),
                            ),
                          ),
                          Label(
                            text: AppConst.kOrTxt,
                            textColor: AppConst.kTextDarkColor,
                          ),
                          Expanded(
                            child: new Container(
                              margin: const EdgeInsets.only(
                                  left: IPetDimens.space20,
                                  right: IPetDimens.space10),
                              // child: Divider(
                              //   color: AppConst.kTextDarkColor,
                              //   height: IPetDimens.space36,
                              // ),
                              child: IPetSharpDivider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IPetDefaultButton(
                      onTap: () {
                      },
                      buttonTitle: AppConst.kLoginWithGoogleTxt,
                      colour: Colors.red,
                      height: IPetDimens.space50,
                      width: IPetDimens.space50,
                      textColour: AppConst.kPrimaryWhiteBgColor,
                      myBorderRadius: BorderRadius.circular(IPetDimens.space5),
                      iPetBoxShadow: [
                        AppConst.iPetLoginBoxShadow(
                          btnColor: Colors.red.withOpacity(0.4),
                        ),
                      ],
                    ),
                    IPetDefaultButton(
                      onTap: () {},
                      buttonTitle: AppConst.kLoginWithFaceBookTxt,
                      colour: Colors.blue,
                      height: IPetDimens.space50,
                      width: IPetDimens.space50,
                      textColour: AppConst.kPrimaryWhiteBgColor,
                      myBorderRadius: BorderRadius.circular(IPetDimens.space5),
                      iPetBoxShadow: [
                        AppConst.iPetLoginBoxShadow(
                          btnColor:
                              Colors.blue.withOpacity(IPetDimens.space0Point4),
                        ),
                      ],
                    ),
                    IPetDefaultButton(
                      onTap: () {},
                      buttonTitle: AppConst.kLoginWithAppleTxt,
                      colour: AppConst.kPrimarySemiWhiteColor,
                      height: IPetDimens.space50,
                      width: IPetDimens.space50,
                      textColour: Colors.black,
                      myBorderRadius: BorderRadius.circular(IPetDimens.space5),
                      iPetBoxBorder: Border.all(
                        color: Colors.black,
                        width: IPetDimens.space1,
                      ),
                      iPetBoxShadow: [
                        AppConst.iPetLoginBoxShadow(
                          btnColor: Colors.grey.withOpacity(0.4),
                        ),
                      ],
                    ),
                    IPetCustomSizedBox(height: IPetDimens.space20),
                    Padding(
                      padding: const EdgeInsets.only(left: IPetDimens.space10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultImage(
                            image: AppConst.kPrivacyAndPolicyTxtIc,
                            height: IPetDimens.space32,
                            width: IPetDimens.space32,
                          ),
                          Label(
                            textColor: AppConst.kBlackColor,
                            text: AppConst.kPrivacyAndPolicyTxt,
                          ),
                          Checkbox(
                            activeColor: Colors.lightBlueAccent,
                            value: true,
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),
                    IPetCustomSizedBox(height: IPetDimens.space25),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  // IPetBNavigation(),
                                  // IPetHomeScreen(),
                                  IPetNavHomeScreen(),
                            ),
                          );

                           // Navigator.pushNamed(context, IPetNavHomeScreen.id);
                        },
                        child: Label(
                          textColor: AppConst.kSecondaryColor,
                          text: AppConst.kNotNowTxt,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
