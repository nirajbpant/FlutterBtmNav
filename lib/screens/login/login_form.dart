import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/login/login_bloc.dart';
import '../../config/app_navigation.dart';
import '../../config/constant/app_constants.dart';
import '../../injectable/injection.dart';
import '../widgets/form_button.dart';
import '../widgets/form_divider.dart';
import '../widgets/form_header.dart';
import '../widgets/string_field.dart';
import '../widgets/toast_message.dart';
import 'widgets/forgot_password.dart';
import 'widgets/new_to_qunto.dart';

class LoginScreenForm extends StatefulWidget {
  const LoginScreenForm({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  State<LoginScreenForm> createState() => _LoginScreenFormState();
}

class _LoginScreenFormState extends State<LoginScreenForm> {
  final TextEditingController _emailCntrller = TextEditingController();

  final TextEditingController _passwordCntrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            error: (message) =>
                showToastMessages(message: message, color: Colors.red),
            successWithUserProfileCreated: () => navigateToHomeScreen(context),
            successWithUserProfileNotCreated: () =>
                navigateToCompleteUserProfile(context),
          );
        },
        child: SingleChildScrollView(
          child: Form(
            key: LoginScreenForm._formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 12,
              ),
              child: SafeArea(
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const FormHeader(
                        title: "Login",
                        btnFunctionName: "Sign in with Google",
                        subTitle: "Login to continue",
                      ),
                      const SizedBox(height: 16),
                      const FormDivider(),
                      const SizedBox(height: 48),
                      EmailField(
                        hintText: 'Email',
                        controller: _emailCntrller,
                      ),
                      const SizedBox(height: 8),
                      PasswordField(
                        hintText: 'Password',
                        controller: _passwordCntrller,
                      ),
                      const SizedBox(height: 16),
                      const ForgotPassword(),
                      const SizedBox(height: 64),
                      BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => _buildWidgetLoading(context),
                            orElse: () => _buildFormButton(context),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      const NewToQunto(),
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

  void navigateToCompleteUserProfile(BuildContext context) {
    jumpToCompleteUserProfileScreen(
      context: context,
    );
  }

  void navigateToHomeScreen(
    BuildContext context,
  ) {
    jumpToHomeScreen(context);
  }

  Widget _buildWidgetLoading(
    BuildContext context,
  ) {
    return const Center(child: CircularProgressIndicator());
  }

  FormButton _buildFormButton(BuildContext context) {
    return FormButton(
      buttonName: "Login",
      color: googleThemeColor,
      btnTextColor: Colors.white,
      icon: const SizedBox(),
      btnTextSize: 17,
      btnSize: 40,
      onPressed: () {
        _onLoginPressed(context);
      },
    );
  }

  void _onLoginPressed(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    if (LoginScreenForm._formKey.currentState!.validate()) {
      bloc.add(LoginEvent.login(
        _emailCntrller.text.trim(),
        _passwordCntrller.text.trim(),
      ));
    }
  }
}
