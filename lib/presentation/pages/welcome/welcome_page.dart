import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/pages/app/bloc/bloc.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40)
            ),
            padding: const EdgeInsets.all(30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                SizedBox(
                  width: 264,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/svg/Logo.svg'),
                      const SizedBox(height: 20,),
                      Text('Приветственный текст, который поможет пользователю понять что тут вообще происходит  и как работать с приложением', style: AppStyles.body.copyWith(color: Colors.black), textAlign: TextAlign.center,)
                    ],
                  ),
                ),
                CustomButton(title: 'Начать', onTap: () {
                  context.read<AppBloc>().add(const AppEvent.welcomeComplete());
                },),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
