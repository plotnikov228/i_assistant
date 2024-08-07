import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/size_utils.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';
import '../bloc/models/calendar_entity.dart';

class CalendarCarousel extends StatefulWidget {
  final List<CalendarEntity> calendars;
  final List<CalendarDay>? changed;
  final int page;
  final Function(CalendarDay day)? onTap;
  const CalendarCarousel({super.key, required this.calendars, this.changed, required this.page, this.onTap});

  @override
  State<CalendarCarousel> createState() => _CalendarCarouselState();
}

class _CalendarCarouselState extends State<CalendarCarousel> {
    final controller = CarouselController();

    int page = 2;
    bool toDown = false;

    bool listen = false;

    ScrollPhysics physics = PageScrollPhysics();
    void check (int needPage) {

      page  = needPage;
      if(!listen && (toDown && page == widget.calendars.length - 2) || (!toDown && page == 1)) {
     listen = true;
          setState(() {
            physics = NeverScrollableScrollPhysics();
          });
    }

    Future.delayed(Duration(milliseconds: 200), () {
        if(controller.page == needPage) {
          setState(() {

            physics = PageScrollPhysics();
            listen = false;
          });
          context
              .read<CalendarBloc>()
              .add(CalendarEvent.selectCalendar(widget.calendars[needPage]));
        } else {
          check(needPage);
        }
      });
    }

    @override
    Widget build(BuildContext context) {
      page = widget.page;

      if(controller.state != null && !listen && controller.page < 2 &&  widget.page == 2) {
        controller.jumpToPage(2);
      }


      return CarouselSlider.builder(

          disableGesture: false,
          carouselController: controller,
          itemCount: widget.calendars.length,
          itemBuilder: (context, index, real) {
            return Column(
              children: [
                SizedBox(height: 30,),
                Text((DateTime(2024,widget.calendars[index].month)).getMonthName(), style: AppStyles.bodyBlack.copyWith(fontSize: 18, fontWeight: index == widget.page ? FontWeight.w600 : null),),
                AspectRatio(
                  aspectRatio: 375/295,
                  child: CalendarWidget(

                    onTap: widget.onTap,
                    calendarDays: widget.calendars[index].days,
                    month: widget.calendars[index].month,
                    activeCalendarDays: widget.calendars[index]
                        .days
                        .where(
                            (element) => element.date.month == widget.calendars[index].month)
                        .toList().map((e) => (widget.changed ?? []).map((e) => e.date).contains(e.date) ? (widget.changed ?? []).firstWhere((element) => element.date.equalDate(e.date)): e).toList(),
                  ),
                ),
                /*AnimatedContainer(duration: Duration(milliseconds: 400),
                width: size.width,
                  height: 1,
                    color:  index < widget.page ? Colors.transparent : Color(0xffCDCDCD)
                ),*/
                Divider(indent: 0, endIndent: 0, color: AppColors.white,)
              ],
            );
          },
          options: CarouselOptions(
            scrollPhysics: physics,
              scrollDirection: Axis.vertical,
              initialPage: widget.page == 0 ? 1 : widget.page,
              pageSnapping: true,
              padEnds: false,
              disableCenter: true,
              enableInfiniteScroll: false,
              onPageChanged: (_page, _) {
                toDown = page < _page;
                print('page $_page');
                check(_page);
              },
              viewportFraction: ((size.height / 1.4) / size.height),
              aspectRatio: 375 / 540));
    }
}

