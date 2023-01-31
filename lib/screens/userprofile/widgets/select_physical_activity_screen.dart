import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/physical_activity/physical_activity_bloc.dart';
import '../../../config/constant/app_constants.dart';
import '../../../injectable/injection.dart';
import '../../widgets/next_button.dart';
import '../user_profile_constants.dart';

class SelectPhysicalActivityWrapper extends StatelessWidget {
  final VoidCallback onSubmitted;
  final TextEditingController physicalActivityController;
  const SelectPhysicalActivityWrapper({
    Key? key,
    required this.onSubmitted,
    required this.physicalActivityController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PhysicalActivityBloc>(),
      child: SelectPhysicalActivity(
        onSubmitted: onSubmitted,
        physicalActivityController: physicalActivityController,
      ),
    );
  }
}

class SelectPhysicalActivity extends StatefulWidget {
  final VoidCallback onSubmitted;
  final TextEditingController physicalActivityController;
  const SelectPhysicalActivity({
    Key? key,
    required this.onSubmitted,
    required this.physicalActivityController,
  }) : super(key: key);

  @override
  State<SelectPhysicalActivity> createState() => _SelectPhysicalActivityState();
}

class _SelectPhysicalActivityState extends State<SelectPhysicalActivity> {
  @override
  void initState() {
    widget.physicalActivityController.text = inactive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            widget.physicalActivityController.text = inactive;
            context.read<PhysicalActivityBloc>().add(
                  const PhysicalActivityEvent.inactiveSelected(),
                );
          },
          child: BlocBuilder<PhysicalActivityBloc, PhysicalActivityState>(
            builder: (context, state) {
              return state.when(
                inactive: () => _selectedGoal(name: inactive, isSelected: true),
                lightlyActive: () =>
                    _selectedGoal(name: inactive, isSelected: false),
                moderatelyActive: () =>
                    _selectedGoal(name: inactive, isSelected: false),
                veryActive: () =>
                    _selectedGoal(name: inactive, isSelected: false),
                extremelyActive: () =>
                    _selectedGoal(name: inactive, isSelected: false),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.physicalActivityController.text = lightlyActive;
            context.read<PhysicalActivityBloc>().add(
                  const PhysicalActivityEvent.lightlyActiveSelected(),
                );
          },
          child: BlocBuilder<PhysicalActivityBloc, PhysicalActivityState>(
            builder: (context, state) {
              return state.when(
                inactive: () =>
                    _selectedGoal(name: lightlyActive, isSelected: false),
                lightlyActive: () =>
                    _selectedGoal(name: lightlyActive, isSelected: true),
                moderatelyActive: () =>
                    _selectedGoal(name: lightlyActive, isSelected: false),
                veryActive: () =>
                    _selectedGoal(name: lightlyActive, isSelected: false),
                extremelyActive: () =>
                    _selectedGoal(name: lightlyActive, isSelected: false),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.physicalActivityController.text = moderatelyActive;
            context.read<PhysicalActivityBloc>().add(
                  const PhysicalActivityEvent.moderatelyActiveSelected(),
                );
          },
          child: BlocBuilder<PhysicalActivityBloc, PhysicalActivityState>(
            builder: (context, state) {
              return state.when(
                inactive: () =>
                    _selectedGoal(name: moderatelyActive, isSelected: false),
                lightlyActive: () =>
                    _selectedGoal(name: moderatelyActive, isSelected: false),
                moderatelyActive: () =>
                    _selectedGoal(name: moderatelyActive, isSelected: true),
                veryActive: () =>
                    _selectedGoal(name: moderatelyActive, isSelected: false),
                extremelyActive: () =>
                    _selectedGoal(name: moderatelyActive, isSelected: false),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.physicalActivityController.text = veryActive;
            context.read<PhysicalActivityBloc>().add(
                  const PhysicalActivityEvent.veryActiveSelected(),
                );
          },
          child: BlocBuilder<PhysicalActivityBloc, PhysicalActivityState>(
            builder: (context, state) {
              return state.when(
                inactive: () =>
                    _selectedGoal(name: veryActive, isSelected: false),
                lightlyActive: () =>
                    _selectedGoal(name: veryActive, isSelected: false),
                moderatelyActive: () =>
                    _selectedGoal(name: veryActive, isSelected: false),
                veryActive: () =>
                    _selectedGoal(name: veryActive, isSelected: true),
                extremelyActive: () =>
                    _selectedGoal(name: veryActive, isSelected: false),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.physicalActivityController.text = extremelyActive;
            context.read<PhysicalActivityBloc>().add(
                  const PhysicalActivityEvent.extremelyActiveSelected(),
                );
          },
          child: BlocBuilder<PhysicalActivityBloc, PhysicalActivityState>(
            builder: (context, state) {
              return state.when(
                inactive: () =>
                    _selectedGoal(name: extremelyActive, isSelected: false),
                lightlyActive: () =>
                    _selectedGoal(name: extremelyActive, isSelected: false),
                moderatelyActive: () =>
                    _selectedGoal(name: extremelyActive, isSelected: false),
                veryActive: () =>
                    _selectedGoal(name: extremelyActive, isSelected: false),
                extremelyActive: () =>
                    _selectedGoal(name: extremelyActive, isSelected: true),
              );
            },
          ),
        ),
        const SizedBox(height: 32),
        BlocBuilder<PhysicalActivityBloc, PhysicalActivityState>(
          builder: (context, state) {
            return state.when(
              inactive: _buildNextButton,
              lightlyActive: _buildNextButton,
              moderatelyActive: _buildNextButton,
              veryActive: _buildNextButton,
              extremelyActive: _buildNextButton,
            );
          },
        ),
      ],
    );
  }

  NextButton _buildNextButton() {
    return NextButton(
      onPressed: widget.onSubmitted,
      btnName: "Start Journey",
      isExtendedButton: true,
    );
  }

  Text _selectedGoal({
    required String name,
    required bool isSelected,
  }) {
    return Text(
      name,
      style: !isSelected ? unselectedGoalStyle : selectedGoalStyle,
    );
  }
}
