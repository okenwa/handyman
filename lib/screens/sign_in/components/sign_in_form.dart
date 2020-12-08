import 'package:flutter/material.dart';
import 'package:handy_man/components/custom_suffix_icon.dart';
import 'package:handy_man/components/default_button.dart';
import 'package:handy_man/components/form_error.dart';
import 'package:handy_man/constants/size_config.dart';

import '../../../constants.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          signInDefaultButton(context),
        ],
      ),
    );
  }

  DefaultButton signInDefaultButton(BuildContext context) {
    return DefaultButton(
      text: 'Get It Fixed',
      press: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
          //if all conditions above are met then validate
          //Navigator.pushNamed(context, HomeScreen.routeName);
        }
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 6) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 6) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        //labelText: 'Password',
        //labelStyle: labelTextStyle(),
        hintText: 'Enter your Password',
        hintStyle: labelTextStyle(),
        //floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: FormIcon(icon: Icons.lock_outline),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        //labelText: 'Email',
        //labelStyle: labelTextStyle(),
        hintText: 'Enter your email',
        hintStyle: labelTextStyle(),
        //floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: FormIcon(icon: Icons.mail_outline),
      ),
    );
  }
}
