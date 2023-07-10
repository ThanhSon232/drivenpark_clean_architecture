import 'package:clean_architecture_app/presentation/helper/validation.dart';
import 'package:clean_architecture_app/presentation/ui/register/bloc/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../common_view/common_app_bar.dart';
import '../../common_view/credential/my_custom_button.dart';
import '../../common_view/credential/password_container.dart';
import '../../common_view/form_container_widget.dart';
import '../../common_view/size_vertical.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _cubit = GetIt.instance.get<RegisterCubit>();
  bool checkBox = false;
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _fullName = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _username.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    _fullName.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppbar(appBar: AppBar(), title: ""),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign up", style: AppTextStyle.heading5,),
              const SizeVer(height:20),
              FormContainerWidget(
                controller: _fullName,
                validator: (vl) => Validation.isNameValid(vl!),
                prefixIcon: Icon(Icons.person_outline,  color: AppColors.white400,
                ),
                placeHolder: "Full name",
              ),
              const SizeVer(height: 20),
              FormContainerWidget(
                controller: _username,
                prefixIcon: Icon(Icons.mail_outline, color: AppColors.white400),
                validator: (vl) => Validation.usernameValidator(vl!),
                placeHolder: "Email or phone number",
              ),
              const SizeVer(height:20),
              PasswordContainer(
                controller: _password,
                validator: (vl) => Validation.passwordValidator(vl!),
                prefixIcon: Icon(Icons.lock_open_outlined, color: AppColors.white400),
                placeHolder: "Your password",
              ),
              const SizeVer(height: 20),
              PasswordContainer(
                controller: _confirmPassword,
                validator: (vl) => Validation.confirmPasswordValidator(_password.text, vl!),
                prefixIcon: Icon(Icons.lock_open_outlined, color: AppColors.white400),
                placeHolder: "Confirm your password",
              ),
              const SizeVer(height: 40),
              Row(
                children: [
                  Checkbox(value: checkBox,
                      onChanged: (value){
                    setState(() {
                      checkBox = value!;
                    });
                  }),
                  Text("Agree to our policies", style: AppTextStyle.smallLite,)
                ],
              ),
              const SizeVer(height: 20),
              MyCustomButton(onPressed: () async{
                if(_formKey.currentState!.validate()){
                  await _cubit.register(context,fullName: _fullName.text,
                      password: _password.text,
                      confirmPassword: _confirmPassword.text,
                      email: _username.text,
                      policy: checkBox);
                }
              }, title: "Sign up")
            ],
          ),
        ),
      ),
    );
  }
}
