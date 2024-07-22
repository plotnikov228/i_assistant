import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/presentation/pages/app/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/notes/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/welcome/welcome_page.dart';
import 'package:provider/provider.dart';

import '../../../utils/router/router.dart';
import '../../resources/app_colors.dart';
import '../calendar/bloc/bloc.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) {
          return AppBloc();
        }),
        BlocProvider(create: (BuildContext context) {
          return NotesBloc()..add(NotesEvent.fetch());
        }),
    BlocProvider(
    create: (BuildContext context) {
    return CalendarBloc();
    },),
      ],
      child: MultiProvider(
        providers: [
          Provider<AppRouter>(create: (_) => AppRouter()),
        ],
        child: MaterialApp(
            title: 'Я|Aсcистент',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
              useMaterial3: true,
            ),
            home: BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return Router.withConfig(
                    config: Provider.of<AppRouter>(context).router,
                  );
                }, welcome: () {
                  return WelcomePage();
                });
              },
            )),
      ),
    );
  }
}
