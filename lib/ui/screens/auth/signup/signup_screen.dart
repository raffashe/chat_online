import 'package:chat_online/core/constants/string.dart';
import 'package:chat_online/core/extension/widget_extension.dart';
import 'package:chat_online/core/services/auth_service.dart';
import 'package:chat_online/ui/screens/auth/signup/signup_viewmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors.dart';

import '../../../../core/constants/styles.dart';
import '../../../widgets/custombutton_widget.dart';
import '../../../widgets/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignupViewmodel>(
      create: (context) => SignupViewmodel(AuthService()),
      child: Consumer<SignupViewmodel>(builder: (context, model, _) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 1.sw * 0.05, vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  60.verticalSpace,
                  Text("Sign up to get started",
                      style: header.copyWith(color: accent)),
                  10.verticalSpace,
                  Text("Join us today",
                      style: body.copyWith(color: txtsubtitle)),
                  25.verticalSpace,
                  CustomTextField(
                    hintText: "Enter name",
                    onChanged: model.setName,
                  ),
                  25.verticalSpace,
                  CustomTextField(
                    hintText: "Enter email",
                    onChanged: model.setEmail,
                  ),
                  25.verticalSpace,
                  CustomTextField(
                    hintText: "Enter password",
                    onChanged: model.setPassword,
                  ),
                  25.verticalSpace,
                  CustomTextField(
                    hintText: "Confirm password",
                    onChanged: model.setConfirmPassword,
                  ),
                  25.verticalSpace,
                  CustomButton(
                    onPressed: () async {
                      try {
                        await model.signup();
                        context.showSnackBar("User signed up successfuly");
                      } on FirebaseAuthException catch (e) {
                        context.showSnackBar(e.toString());
                      } catch (e) {
                        context.showSnackBar(e.toString());
                      }
                    },
                    text: 'Sign Up',
                  ),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have account ",
                          style: body.copyWith(color: txtsubtitle)),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, login);
                        },
                        child: Text(
                          "Login",
                          style: smallb.copyWith(color: accent),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
