class Validation{
  const Validation._();

  static bool isRealEmail(email) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static String? isNameValid(String name) {
    final RegExp nameRegex = RegExp(r'^[a-zA-Z\s]+$');
   if(!nameRegex.hasMatch(name)){
     return "Please input a real name";
   }
   return null;
  }

  static bool isNumeric(String str) {
    return RegExp(r'^-?[0-9]+$').hasMatch(str);
  }

  static   String? validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  static String? usernameValidator(String username){
    if(username.isEmpty){
      return "This field must be filled";
    }
    if(Validation.isNumeric(username)){
      return Validation.validateMobile(username);
    } else {
      if(!Validation.isRealEmail(username)){
        return "Please enter a real email";
      }
    }
    return null;
  }

  static   String? passwordValidator(String password){
    if(password.isEmpty){
      return "This field must be filled";
    }
    if(password.length < 8){
      return "Password length must be greater than 8 characters";
    }

    return null;
  }

  static String? confirmPasswordValidator(String password, String confirmPassword){
    if(password.isEmpty){
      return "This field must be filled";
    }
    if(confirmPassword.isEmpty){
      return "This field must be filled";
    }
    if(password!=confirmPassword){
      return "Confirm password doesn't match";
    }
    return null;
  }


}