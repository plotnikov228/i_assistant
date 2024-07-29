import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/blocs/theme/bloc.dart';
import 'package:i_assistant/presentation/pages/theme/widgets/theme_button.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dividerGrey,
      body: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        final bloc = context.read<ThemeBloc>();
        return AnimatedContainer(
          color: AppColors.dividerGrey,
          duration: Duration(milliseconds: 300),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Настройки',
                    style: AppStyles.bigHead.copyWith(color: AppColors.black),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(32)),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ThemeButton(

                                onTap: () {
                                  bloc.add(ThemeEvent.changeTheme('light'));
                                },
                                bgColor: AppColors.day,
                                mainColor: AppColors.dayText,
                                svg: 'sun',

                                active: state.lightTheme && !state.authTheme,
                                text: 'Светлая'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: ThemeButton(

                                onTap: () {
                                  bloc.add(ThemeEvent.changeTheme('dark'));
                                },
                                bgColor: AppColors.night,
                                mainColor: AppColors.nightText,
                                svg: 'sun',
                                active: !state.lightTheme && !state.authTheme,
                                text: 'Тёмная'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ThemeButton(
                                onTap: () {
                                  bloc.add(ThemeEvent.changeTheme('auto'));
                                },
                                  bgColor: AppColors.night,
                                  gradient: [AppColors.day, AppColors.night],
                                  mainColor: AppColors.black,
                                  active: state.authTheme,
                                  text: 'Авто'))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
