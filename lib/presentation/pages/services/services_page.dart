import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/presentation/pages/services/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/services/widgets/service_item.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

import '../../../blocs/theme/bloc.dart';
import '../../resources/app_styles.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ServicesBloc();
      },
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.dividerGrey,
            body: BlocBuilder<ServicesBloc, ServicesState>(
              builder: (context, state) => SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Сервисы',
                        style: AppStyles.bigHead.copyWith(color: AppColors.black),
                      ),
                    ),
                    Column(
                      children: state.services
                          .map((e) => Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                child: ServiceItem(
                                  onTap: () {
                                    context.read<ServicesBloc>().add(ServicesEvent.goToService(e));
                                  },
                                  serviceEntity: e,
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
