import 'package:evently_app/Theme/app_colors.dart';
import 'package:evently_app/common/app_text_styles.dart';
import 'package:evently_app/common/widgets/custom_text.dart';
import 'package:evently_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formState, //unique identifier
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets
                      .lib
                      .aesstes
                      .images
                      .blueWhiteMinimalModernSimpleBoldBusinessMagLogo3
                      .path,
                  width: 136,
                  height: 186,
                ),
                CustomText(
                  label: 'Email', //TODO:Localization,
                  imagePathPrefix: Assets.lib.aesstes.icons.sms,
                  vali: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'email is requierd'; //TODO:Localization
                    }
                  },
                ),
                CustomText(
                  label: 'Password',
                  imagePathPrefix: Assets.lib.aesstes.icons.lock,
                  isPassowrd: true,
                  vali: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'password is requierd'; //TODO:Localization,
                    } else if (p0.length < 8) {
                      return 'passord must be at least 8 characters';
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Forget Pasword ?',
                        style:
                            AppTextStyles.styleS16W700(
                              color: AppColors.darkThemeMainColor,
                            ).copyWith(
                              decoration: TextDecoration.underline,
                              fontStyle: FontStyle.italic,
                              decorationColor: AppColors.darkThemeMainColor,
                            ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: SizedBox(
                    height: 56,
                    width: double.maxFinite,
                    child: FilledButton(
                      onPressed: () {
                        bool isVaild = _formState.currentState!.validate();
                        if (isVaild) {}
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColors.darkThemeMainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                      ),
                      child: Text('Login'),
                    ),
                  ),
                ),
                SizedBox(height: 48),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Don't Have an account ? "),
                      TextSpan(
                        text: "Create Account",
                        style: TextStyle(
                          color: AppColors.darkThemeMainColor,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.darkThemeMainColor,
                        ),
                      ),
                    ],
                    style: AppTextStyles.styleS16W500(
                      color: AppColors.disableColor,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: Divider(color: AppColors.darkThemeMainColor),
                      ),
                      Text(
                        'Or',
                        style: AppTextStyles.styleS16W500(
                          color: AppColors.darkThemeMainColor,
                        ),
                      ),
                      Expanded(
                        child: Divider(color: AppColors.darkThemeMainColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton.icon(
                    icon: Image.asset(
                      Assets.lib.aesstes.images.image6.path,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      "Login with Google",
                      style: AppTextStyles.styleS20W500(
                        color: AppColors.darkThemeMainColor,
                      ),
                    ),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.darkThemeMainColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
