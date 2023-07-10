import 'package:flutter/material.dart';

import '../../common_view/form_container_widget.dart';
import '../../common_view/size_vertical.dart';
import '../../navigation/page_const.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
class UserNotLoginPage extends StatelessWidget {
  const UserNotLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.transparent,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset("lib/presentation/assets/images/eventhub.png"),
                      const SizeVer(height: 10),
                      Text("EventHub", style: AppTextStyle.heading4,)
                    ],
                  ),
                ),
                const SizeVer(height: 30),
                Text("Sign In", style: AppTextStyle.heading5,),
                const SizeVer(height: 22),
                InkWell(
                  child: const FormContainerWidget(
                    enable: false,
                    prefixIcon: Icon(Icons.person_outline),
                    placeHolder: "Email or phone number",
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, PageConst.signIn);

                  },
                ),
                const SizeVer(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You don't have an account? "),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, PageConst.signUp);
                    }, child: const Text("Sign up"))
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
