import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_app_bar.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/years_carousel.dart';

import '../../../../utils/size_utils.dart';
import '../bloc/models/year_entity.dart';

class CalendarYearContent extends StatelessWidget {
  final List<YearEntity> years;
  final int selectedYear;
  final bool loading;

  const CalendarYearContent(
      {super.key, required this.years, required this.selectedYear, required this.loading});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          CalendarAppBar(
            popText: 'Cегодня',
            onPop: () {
              context.read<CalendarBloc>().add(CalendarEvent.goToSelectYear());

              return;
              context.read<CalendarBloc>().add(CalendarEvent.selectCalendar(
                  years
                      .firstWhere(
                          (element) => element.year == DateTime.now().year)
                      .calendars
                      .firstWhere(
                          (element) => element.month == DateTime.now().month)));
            },
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: Container(
                width: size.width,

                decoration: BoxDecoration(color: Color(0xffFBFBFB)),
            child: loading ? Center(
              child: CircularProgressIndicator(),

            ) : YearsCarousel(
                          years: years,
                          onTap: (day) {},
                          page: selectedYear,
                        ),
          )),
        ],
      ),
    );
  }
}
