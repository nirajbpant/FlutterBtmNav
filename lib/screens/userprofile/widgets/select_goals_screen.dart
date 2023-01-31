import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/select_goal/select_goal_bloc.dart';
import '../../../config/constant/app_constants.dart';
import '../../../injectable/injection.dart';
import '../../widgets/next_button.dart';
import '../user_profile_constants.dart';

class SelectGoalsWrapper extends StatelessWidget {
  final VoidCallback onSubmitted;
  final TextEditingController goalsController;
  const SelectGoalsWrapper({
    Key? key,
    required this.goalsController,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SelectGoalBloc>(),
      child: SelectGoals(
        goalsController: goalsController,
        onSubmitted: onSubmitted,
      ),
    );
  }
}

class SelectGoals extends StatefulWidget {
  final VoidCallback onSubmitted;
  final TextEditingController goalsController;
  const SelectGoals({
    Key? key,
    required this.goalsController,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  State<SelectGoals> createState() => _SelectGoalsState();
}

class _SelectGoalsState extends State<SelectGoals> {
  @override
  void initState() {
    widget.goalsController.text = generalFitness;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            widget.goalsController.text = generalFitness;
            context.read<SelectGoalBloc>().add(
                  const SelectGoalEvent.generalFitnessSelected(),
                );
          },
          child: BlocBuilder<SelectGoalBloc, SelectGoalState>(
            builder: (context, state) {
              return state.when(
                  generalFitness: () =>
                      _selectedProgram(isSelected: true, name: generalFitness),
                  strengthTraining: () =>
                      _selectedProgram(isSelected: false, name: generalFitness),
                  muscleTone: () =>
                      _selectedProgram(isSelected: false, name: generalFitness),
                  bodybuilding: () =>
                      _selectedProgram(isSelected: false, name: generalFitness),
                  powerLifting: () => _selectedProgram(
                      isSelected: false, name: generalFitness));
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.goalsController.text = strengthTraining;
            context.read<SelectGoalBloc>().add(
                  const SelectGoalEvent.strengthTrainingSelected(),
                );
          },
          child: BlocBuilder<SelectGoalBloc, SelectGoalState>(
            builder: (context, state) {
              return state.when(
                  generalFitness: () => _selectedProgram(
                      isSelected: false, name: strengthTraining),
                  strengthTraining: () => _selectedProgram(
                      isSelected: true, name: strengthTraining),
                  muscleTone: () => _selectedProgram(
                      isSelected: false, name: strengthTraining),
                  bodybuilding: () => _selectedProgram(
                      isSelected: false, name: strengthTraining),
                  powerLifting: () => _selectedProgram(
                      isSelected: false, name: strengthTraining));
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.goalsController.text = muscleTone;
            context.read<SelectGoalBloc>().add(
                  const SelectGoalEvent.muscleToneSelected(),
                );
          },
          child: BlocBuilder<SelectGoalBloc, SelectGoalState>(
            builder: (context, state) {
              return state.when(
                  generalFitness: () =>
                      _selectedProgram(isSelected: false, name: muscleTone),
                  strengthTraining: () =>
                      _selectedProgram(isSelected: false, name: muscleTone),
                  muscleTone: () =>
                      _selectedProgram(isSelected: true, name: muscleTone),
                  bodybuilding: () =>
                      _selectedProgram(isSelected: false, name: muscleTone),
                  powerLifting: () =>
                      _selectedProgram(isSelected: false, name: muscleTone));
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.goalsController.text = bodyBuilding;
            context.read<SelectGoalBloc>().add(
                  const SelectGoalEvent.bodybuildingSelected(),
                );
          },
          child: BlocBuilder<SelectGoalBloc, SelectGoalState>(
            builder: (context, state) {
              return state.when(
                  generalFitness: () =>
                      _selectedProgram(isSelected: false, name: bodyBuilding),
                  strengthTraining: () =>
                      _selectedProgram(isSelected: false, name: bodyBuilding),
                  muscleTone: () =>
                      _selectedProgram(isSelected: false, name: bodyBuilding),
                  bodybuilding: () =>
                      _selectedProgram(isSelected: true, name: bodyBuilding),
                  powerLifting: () => _selectedProgram(
                      isSelected: false, name: "Bodybuilding"));
            },
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            widget.goalsController.text = powerLifting;
            context.read<SelectGoalBloc>().add(
                  const SelectGoalEvent.powerliftingSelected(),
                );
          },
          child: BlocBuilder<SelectGoalBloc, SelectGoalState>(
            builder: (context, state) {
              return state.when(
                  generalFitness: () =>
                      _selectedProgram(isSelected: false, name: powerLifting),
                  strengthTraining: () =>
                      _selectedProgram(isSelected: false, name: powerLifting),
                  muscleTone: () =>
                      _selectedProgram(isSelected: false, name: powerLifting),
                  bodybuilding: () =>
                      _selectedProgram(isSelected: false, name: powerLifting),
                  powerLifting: () =>
                      _selectedProgram(isSelected: true, name: powerLifting));
            },
          ),
        ),
        const SizedBox(height: 32),
        BlocBuilder<SelectGoalBloc, SelectGoalState>(
          builder: (context, state) {
            return state.when(
                generalFitness: _buildNextButton,
                strengthTraining: _buildNextButton,
                muscleTone: _buildNextButton,
                bodybuilding: _buildNextButton,
                powerLifting: _buildNextButton);
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

  Text _selectedProgram({
    required String name,
    required bool isSelected,
  }) {
    return Text(
      name,
      style: !isSelected ? unselectedGoalStyle : selectedGoalStyle,
    );
  }
}
