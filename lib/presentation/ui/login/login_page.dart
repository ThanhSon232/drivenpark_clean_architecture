import 'package:clean_architecture_app/presentation/helper/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../shared/dialog/snackbar.dart';
import '../../common_view/common_app_bar.dart';
import '../../common_view/credential/my_custom_button.dart';
import '../../common_view/credential/password_container.dart';
import '../../common_view/form_container_widget.dart';
import '../../common_view/size_vertical.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
import 'bloc/login_cubit.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _cubit = GetIt.instance.get<LoginCubit>();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _username.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppbar(appBar: AppBar(), title: ""),
        backgroundColor: AppColors.white,
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginInvalid) {
              showSnackbar(context, state.error);
            } else if (state is LoginLoading) {
              state.isLoading
                  ? showLoaderDialog(context)
                  : dismissLoaderDialog(context);
            } else if (state is LoginValid) {
              showSnackbar(context, state.msg);
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                              "lib/presentation/assets/images/eventhub.png"),
                          const SizeVer(height: 5),
                          Text(
                            "Eventhub",
                            style: AppTextStyle.heading4,
                          )
                        ],
                      ),
                    ),
                    const SizeVer(height: 41),
                    Text(
                      "Sign in",
                      style: AppTextStyle.heading5,
                    ),
                    const SizeVer(height: 15),
                    FormContainerWidget(
                      validator: (vl) {
                        return Validation.usernameValidator(vl!);
                      },
                      controller: _username,
                      prefixIcon:
                          Icon(Icons.mail_outline, color: AppColors.white400),
                      placeHolder: "Email or phone number",
                    ),
                    const SizeVer(height: 15),
                    PasswordContainer(
                        validator: (vl) => Validation.passwordValidator(vl!),
                        controller: _password,
                        prefixIcon: Icon(
                          Icons.lock_open_outlined,
                          color: AppColors.white400,
                        ),
                        placeHolder: "Your password"),
                    const SizeVer(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("Forget password?")),
                    ),
                    const SizeVer(height: 20),
                    MyCustomButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await _cubit.onLoginButtonPressed(
                              username: _username.text,
                              password: _password.text);
                        }
                      },
                      title: "Sign in",
                    ),
                    const SizeVer(height: 20),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
