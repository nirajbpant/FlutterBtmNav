import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/user_profile/user_profile_bloc.dart';
import '../../data/user_details/datastore/models/user_details.dart';
import '../../injectable/injection.dart';
import '../widgets/toast_message.dart';
import 'widgets/app_bar_header.dart';
import 'widgets/bmi_screen.dart';
import 'widgets/date_form.dart';
import 'widgets/gender_form.dart';
import 'widgets/height_form.dart';
import 'widgets/name_form.dart';
import 'widgets/owner_profile_completion_success.dart';
import 'widgets/phone_form.dart';
import 'widgets/select_goals_screen.dart';
import 'widgets/select_physical_activity_screen.dart';
import 'widgets/weight_form.dart';

class UserProfileDetailScreen extends StatefulWidget {
  const UserProfileDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<UserProfileDetailScreen> createState() =>
      _UserProfileDetailScreenState();
}

class _UserProfileDetailScreenState extends State<UserProfileDetailScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightFeetController = TextEditingController();
  final TextEditingController _heightInchController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _physicalActivityController =
      TextEditingController();
  final TextEditingController _goalsController = TextEditingController();
  double? bmi;
  String appBarHeader = "Name";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _genderController.dispose();
    _weightController.dispose();
    _heightFeetController.dispose();
    _heightInchController.dispose();
    _dateController.dispose();
    _physicalActivityController.dispose();
    _goalsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserProfileBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: BlocBuilder<UserProfileBloc, UserProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                nameForm: () => buildAppBar("Name"),
                phoneForm: () => buildAppBar("Phone"),
                genderForm: () => buildAppBar("Gender"),
                weightForm: () => buildAppBar("Weight"),
                heightForm: () => buildAppBar("Height"),
                ageForm: () => buildAppBar("Age"),
                bmiForm: () => buildAppBar(""),
                physicalActivityForm: () => buildAppBar("Physical Activity"),
                selectGoals: () => buildAppBar("Select Goals"),
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
        body: BlocListener<UserProfileBloc, UserProfileState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              formSubmittedError: () => showToastMessages(
                  message: "Error Submitting Details", color: Colors.red),
            );
          },
          child: SafeArea(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: BlocBuilder<UserProfileBloc, UserProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    nameForm: () => _buildNameForm(context),
                    phoneForm: () => _buildPhoneForm(context),
                    genderForm: () => _buildGenderForm(context),
                    weightForm: () => _buildWeightForm(context),
                    heightForm: () => _buildHeightForm(context),
                    ageForm: () => _buildAgeForm(context),
                    bmiForm: () => _buildBMIScreen(context),
                    physicalActivityForm: () =>
                        _buildPhysicalActivityScreen(context),
                    selectGoals: () => _buildSelectGoalsScreen(context),
                    formSubmittedLoading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    formSubmittedSuccess: () => _buildSuccessScreen(context),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNameForm(
    BuildContext context,
  ) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: NameForm(
        firstNameController: _firstNameController,
        lastNameController: _lastNameController,
        onSubmitted: () {
          bloc.add(
            UserProfileEvent.onNameValueSubmitted(
              firstName: _firstNameController.text.trim(),
              lastName: _lastNameController.text.trim(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPhoneForm(BuildContext context) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: PhoneForm(
        phoneNumberController: _phoneNumberController,
        onSubmitted: () {
          bloc.add(
            UserProfileEvent.onPhoneNumberSubmitted(
              phoneNumber: _phoneNumberController.text.trim(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGenderForm(
    BuildContext context,
  ) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
        child: GenderForm(
      genderController: _genderController,
      onSubmitted: () => bloc.add(UserProfileEvent.onGenderValueSubmitted(
          gender: _genderController.text)),
    ));
  }

  Widget _buildWeightForm(
    BuildContext context,
  ) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: WeightForm(
        weightController: _weightController,
        onSubmitted: () {
          bloc.add(
            UserProfileEvent.onWeightValueSubmitted(
              weight: _weightController.text.trim(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeightForm(
    BuildContext context,
  ) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: HeightForm(
        heightFeetController: _heightFeetController,
        heightInchController: _heightInchController,
        onSubmitted: () {
          bloc.add(UserProfileEvent.onHeightValueSubmitted(
            feet: _heightFeetController.text,
            inch: _heightInchController.text,
          ));
        },
      ),
    );
  }

  Widget _buildAgeForm(
    BuildContext context,
  ) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: DateForm(
        dateController: _dateController,
        onSubmitted: () {
          bloc.add(
              UserProfileEvent.onAgeValueSubmitted(dob: _dateController.text));
          calculateBMI();
        },
      ),
    );
  }

  Widget _buildBMIScreen(BuildContext context) {
    final bloc = context.read<UserProfileBloc>();
    return BMIScreen(
      bmi: bmi as double,
      onSubmitted: () =>
          bloc.add(const UserProfileEvent.onBMICaculationScreenReviewed()),
    );
  }

  Widget _buildSelectGoalsScreen(BuildContext context) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: SelectGoalsWrapper(
        goalsController: _goalsController,
        onSubmitted: () => bloc.add(
          UserProfileEvent.onFormCompletedAndSubmitted(
            userDetails: UserDetails(
              //Todo fix phone and physical activity.
              firstName: _firstNameController.text.trim(),
              lastName: _lastNameController.text.trim(),
              gender: _genderController.text.trim(),
              weight: double.parse(_weightController.text.trim()),
              height: calculateTotalHeight() * 100,
              dateOfBirth: _dateController.text,
              bmi: bmi,
              goal: _goalsController.text.trim(),
              phone: _phoneNumberController.text.trim(),
              physicalActivity: _physicalActivityController.text,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhysicalActivityScreen(BuildContext context) {
    final bloc = context.read<UserProfileBloc>();
    return Center(
      child: SelectPhysicalActivityWrapper(
        physicalActivityController: _physicalActivityController,
        onSubmitted: () => bloc.add(
          UserProfileEvent.onPhysicalActivitySelected(
            physicalActivity: _physicalActivityController.text,
          ),
        ),
      ),
    );
  }

  Widget buildAppBar(String name) {
    return AppBarHeader(
      title: name,
    );
  }

  void calculateBMI() {
    final double totalWeight = double.parse(_weightController.text.trim());
    final double totalHeight = calculateTotalHeight();
    bmi = totalWeight / (totalHeight * totalHeight);
  }

  double calculateTotalHeight() {
    final double totalHeightInFeet =
        double.parse(_heightFeetController.text.trim()) * 30.48;
    final double totalHeightInInches =
        double.parse(_heightInchController.text.trim()) * 2.54;
    final double totalHeight = (totalHeightInFeet + totalHeightInInches) * 0.01;
    return totalHeight;
  }

  Widget _buildSuccessScreen(
    BuildContext context,
  ) {
    return const OwnerProfileCompletionSuccess();
  }
}
