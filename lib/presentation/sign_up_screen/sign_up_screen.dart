import 'package:skys_s_cleanexpress/widgets/app_bar/custom_app_bar.dart';
import 'package:skys_s_cleanexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:skys_s_cleanexpress/widgets/app_bar/appbar_title.dart';
import 'package:skys_s_cleanexpress/widgets/custom_floating_text_field.dart';
import 'package:skys_s_cleanexpress/widgets/custom_checkbox_button.dart';
import 'package:skys_s_cleanexpress/widgets/custom_elevated_button.dart';
import 'package:skys_s_cleanexpress/widgets/custom_icon_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:skys_s_cleanexpress/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool checkmark = false;

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
                              _buildSeventeen(context),
                              Column(children: [
                                SizedBox(height: 12.v),
                                _buildFullName(context),
                                SizedBox(height: 18.v),
                                _buildEmail(context),
                                SizedBox(height: 18.v),
                                _buildPassword(context),
                                SizedBox(height: 18.v),
                                _buildConfirmpassword(context),
                                SizedBox(height: 25.v),
                                _buildCheckmark(context),
                                SizedBox(height: 26.v),
                                _buildSignUp(context),
                                SizedBox(height: 25.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 44.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 14.v, bottom: 10.v),
                                              child: SizedBox(
                                                  width: 92.h,
                                                  child: Divider())),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("Or connect with",
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 14.v, bottom: 10.v),
                                              child: SizedBox(
                                                  width: 96.h,
                                                  child: Divider(indent: 4.h)))
                                        ])),
                                SizedBox(height: 11.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 91.h, right: 113.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogleLogo,
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
                                              imagePath: ImageConstant.imgGroup,
                                              height: 32.v,
                                              width: 26.h)
                                        ]))),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: 93.v,
                                        width: 306.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle25,
                                                  height: 93.v,
                                                  width: 121.h,
                                                  alignment:
                                                      Alignment.centerRight),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapTxtAlreadyhavean(
                                                            context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 8.v),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Already have an account? ",
                                                                        style: CustomTextStyles
                                                                            .bodyLargeff000000),
                                                                    TextSpan(
                                                                        text:
                                                                            "Login",
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleMedium)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))))
                                            ])))
                              ])
                            ])))))));
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return SizedBox(
        height: 164.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup7),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        CustomAppBar(
                            leadingWidth: double.maxFinite,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgArrowLeft,
                                margin:
                                    EdgeInsets.fromLTRB(17.h, 6.v, 354.h, 4.v),
                                onTap: () {
                                  onTapArrowLeft(context);
                                }),
                            title: AppbarTitle(
                                text: "Back",
                                margin: EdgeInsets.only(left: 37.h))),
                        SizedBox(height: 68.v),
                        Text("Lets Get Started!",
                            style: theme.textTheme.headlineSmall)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("Create an account to get all features",
                  style: CustomTextStyles.titleSmallGray50001))
        ]));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 33.h),
        child: CustomFloatingTextField(
            controller: fullNameController,
            labelText: "Full Name",
            labelStyle: CustomTextStyles.bodyMediumGray500,
            hintText: "Full Name",
            hintStyle: CustomTextStyles.bodyMediumGray500));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 33.h),
        child: CustomFloatingTextField(
            controller: emailController,
            labelText: "Email",
            labelStyle: CustomTextStyles.bodyMediumGray50001,
            hintText: "Email",
            hintStyle: CustomTextStyles.bodyMediumGray50001,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 33.h),
        child: CustomFloatingTextField(
            controller: passwordController,
            labelText: "Password",
            labelStyle: CustomTextStyles.bodyMediumBluegray200,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            suffix: Container(
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 28.adaptSize,
                    width: 28.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 55.v)));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 33.h),
        child: CustomFloatingTextField(
            controller: confirmpasswordController,
            labelText: "Confirm Password",
            labelStyle: CustomTextStyles.bodyMediumBluegray200,
            hintText: "Confirm Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            suffix: Container(
                margin: EdgeInsets.symmetric(horizontal: 13.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 28.adaptSize,
                    width: 28.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 55.v)));
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 33.h, right: 47.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text:
                    "By registering, you are agreeing with our Terms of Use and Privacy Policy",
                isExpandedText: true,
                value: checkmark,
                onChange: (value) {
                  checkmark = value;
                })));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign up", margin: EdgeInsets.only(left: 38.h, right: 37.h));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
