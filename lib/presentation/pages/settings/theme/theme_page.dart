import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/blocs/theme/bloc.dart';
import 'package:i_assistant/presentation/pages/settings/theme/widgets/theme_button.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_styles.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        final bloc = context.read<ThemeBloc>();
        return AnimatedContainer(
          color: AppColors.dividerGrey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32))
          ),
          duration: Duration(milliseconds: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 5,
                  width: 84,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: AppColors.mediumGrey),
                ),
              ),
              const SizedBox(
                height: 80,
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
        );
      });
  }
}
