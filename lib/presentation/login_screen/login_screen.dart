import 'package:skys_s_cleanexpress/widgets/app_bar/custom_app_bar.dart';
import 'package:skys_s_cleanexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:skys_s_cleanexpress/widgets/app_bar/appbar_title.dart';
import 'package:skys_s_cleanexpress/widgets/custom_floating_text_field.dart';
import 'package:skys_s_cleanexpress/widgets/custom_text_form_field.dart';
import 'package:skys_s_cleanexpress/widgets/custom_checkbox_button.dart';
import 'package:skys_s_cleanexpress/widgets/custom_elevated_button.dart';
import 'package:skys_s_cleanexpress/widgets/custom_icon_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:skys_s_cleanexpress/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController hiddenATMNoController = TextEditingController();

  bool rememberme = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildSeven(context),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.h),
                                        child: CustomFloatingTextField(
                                            controller: emailController,
                                            labelText: "Email",
                                            labelStyle:
                                                CustomTextStyles.bodyMedium13,
                                            hintText: "Email",
                                            textInputType:
                                                TextInputType.emailAddress)),
                                    SizedBox(height: 27.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.h),
                                        child: CustomTextFormField(
                                            controller: hiddenATMNoController,
                                            hintText: "****************",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 19.v, 16.h, 8.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgEye,
                                                    height: 28.adaptSize,
                                                    width: 28.adaptSize)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 55.v),
                                            obscureText: true)),
                                    SizedBox(height: 14.v),
                                    _buildFive(context),
                                    SizedBox(height: 31.v),
                                    CustomElevatedButton(
                                        text: "Login",
                                        margin: EdgeInsets.only(
                                            left: 37.h, right: 38.h)),
                                    SizedBox(height: 40.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 43.h, right: 49.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 14.v, bottom: 10.v),
                                                  child: SizedBox(
                                                      width: 92.h,
                                                      child: Divider())),
                                              Container(
                                                  height: 26.v,
                                                  width: 196.h,
                                                  margin: EdgeInsets.only(
                                                      left: 11.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                                "Or connect with",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 10
                                                                            .v),
                                                                child: SizedBox(
                                                                    width: 92.h,
                                                                    child:
                                                                        Divider())))
                                                      ]))
                                            ])),
                                    SizedBox(height: 16.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 99.h, right: 105.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGoogleLogo,
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize),
                                              Spacer(flex: 50),
                                              CustomIconButton(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFacebook)),
                                              Spacer(flex: 50),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup,
                                                  height: 32.v,
                                                  width: 26.h)
                                            ])),
                                    SizedBox(height: 28.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 168.v,
                                            width: 309.h,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle25,
                                                      height: 159.v,
                                                      width: 143.h,
                                                      alignment: Alignment
                                                          .bottomRight),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapTxtDonthaveanaccount(
                                                                context);
                                                          },
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Don’t have an account? ",
                                                                        style: CustomTextStyles
                                                                            .bodyLargeff000000),
                                                                    TextSpan(
                                                                        text:
                                                                            "Sign up",
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleMedium)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)))
                                                ])))
                                  ])
                            ])))))));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup7), fit: BoxFit.cover)),
        child: Column(children: [
          CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.fromLTRB(17.h, 6.v, 354.h, 4.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              title: AppbarTitle(
                  text: "Back", margin: EdgeInsets.only(left: 37.h))),
          SizedBox(height: 140.v),
          Text("Welcome back!", style: theme.textTheme.headlineSmall),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomCheckboxButton(
                  text: "Remember me",
                  value: rememberme,
                  onChange: (value) {
                    rememberme = value;
                  })),
          Text("Forgot password?", style: CustomTextStyles.titleSmallPrimary)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
