import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/register/register_bloc.dart';
import '../../config/constant/app_constants.dart';
import '../../injectable/injection.dart';
import '../widgets/form_button.dart';
import '../widgets/form_divider.dart';
import '../widgets/form_header.dart';
import '../widgets/string_field.dart';
import '../widgets/toast_message.dart';
import 'widgets/already_member.dart';

class RegisterScreenForm extends StatefulWidget {
  const RegisterScreenForm({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  State<RegisterScreenForm> createState() => _RegisterScreenFormState();
}

class _RegisterScreenFormState extends State<RegisterScreenForm> {
  final TextEditingController _emailCntrller = TextEditingController();

  final TextEditingController _passwordCntrller = TextEditingController();

  final TextEditingController _passwordConfirmCntrller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>(),
      child: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            error: (message) => showToastMessages(
              message: "Error Registering the User",
              color: Colors.red,
            ),
            success: () => _onRegisterSuccess(context),
          );
        },
        child: SingleChildScrollView(
          child: Form(
            key: RegisterScreenForm._formKey,
            child: SafeArea(
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FormHeader(
                        title: "Register",
                        btnFunctionName: "Sign up with Google",
                        subTitle: "Register to continue",
                      ),
                      const SizedBox(height: 16),
                      const FormDivider(),
                      const SizedBox(height: 16),
                      EmailField(
                        controller: _emailCntrller,
                        hintText: 'Email',
                      ),
                      const SizedBox(height: 8),
                      PasswordField(
                        hintText: 'Password',
                        controller: _passwordCntrller,
                      ),
                      const SizedBox(height: 8),
                      PasswordField(
                        hintText: 'Confirm Password',
                        secondaryPasswordController: _passwordCntrller,
                        controller: _passwordConfirmCntrller,
                      ),
                      const SizedBox(height: 16),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "By signing up, you're agreeing to our ",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: fontNameLato,
                              ),
                            ),
                            TextSpan(
                              text: "Terms & Conditions and Privacy Policy",
                              style: TextStyle(
                                color: googleThemeColor,
                                fontFamily: fontNameLato,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => _buildWidgetLoading(context),
                            orElse: () => _buildFormButton(context),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      const AlreadyAMember(),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onRegisterSuccess(BuildContext context) {
    showToastMessages(
      message: "Register Successful. You can Log in now",
      color: ThemeData().primaryColor,
    );
    _emailCntrller.clear();
    _passwordCntrller.clear();
    _passwordConfirmCntrller.clear();
  }

  Widget _buildWidgetLoading(
    BuildContext context,
  ) {
    return const Center(child: CircularProgressIndicator());
  }

  FormButton _buildFormButton(BuildContext context) {
    return FormButton(
      buttonName: "Register",
      color: googleThemeColor,
      btnTextColor: Colors.white,
      icon: const SizedBox(),
      btnTextSize: 17,
      btnSize: 40,
      onPressed: () {
        _onRegisterPressed(context);
      },
    );
  }

  void _onRegisterPressed(BuildContext context) {
    final bloc = context.read<RegisterBloc>();

    if (RegisterScreenForm._formKey.currentState!.validate()) {
      bloc.add(RegisterEvent.register(
        _emailCntrller.text.trim(),
        _passwordCntrller.text.trim(),
      ));
    }
  }
}
