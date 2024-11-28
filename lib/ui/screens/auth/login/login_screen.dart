import 'package:chat_online/core/constants/colors.dart';
import 'package:chat_online/core/constants/string.dart';
import 'package:chat_online/core/extension/widget_extension.dart';
import 'package:chat_online/core/services/auth_service.dart';
import 'package:chat_online/ui/screens/auth/login/login_viewmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/styles.dart';
import '../../../widgets/custombutton_widget.dart';
import '../../../widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewmodel(AuthService()),
      child: Consumer<LoginViewmodel>(builder: (context, model, _) {
        return Scaffold(
          body: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 1.sw * 0.05, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                60.verticalSpace,
                Text("Login", style: header.copyWith(color: accent)),
                10.verticalSpace,
                Text("Please Log In To Your Account!",
                    style: body.copyWith(color: txtsubtitle)),
                30.verticalSpace,
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
                CustomButton(
                  onPressed: () async {
                    try {
                      await model.login();
                      context.showSnackBar("User logged in successfuly");
                    } on FirebaseAuthException catch (e) {
                      context.showSnackBar(e.toString());
                    } catch (e) {
                      context.showSnackBar(e.toString());
                    }
                  },
                  text: 'Log In',
                ),
                30.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have account ",
                        style: body.copyWith(color: txtsubtitle)),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, signup);
                      },
                      child: Text(
                        "Sign Up",
                        style: smallb.copyWith(color: accent),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
