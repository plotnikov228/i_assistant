import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/models/year_entity.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/size_utils.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';
import '../bloc/models/calendar_entity.dart';
import 'mini_calendar_widget.dart';

class YearsCarousel extends StatefulWidget {
  final List<YearEntity> years;
  final int page;
  final Function(CalendarEntity entity)? onTap;
  const YearsCarousel({super.key,required this.page, this.onTap, required this.years});

  @override
  State<YearsCarousel> createState() => _YearsCarouselState();
}

class _YearsCarouselState extends State<YearsCarousel> {
  final controller = CarouselController();


  void check (int needPage) {
    Future.delayed(Duration(milliseconds: 200), () {
      if(controller.page == needPage) {
        context
            .read<CalendarBloc>()
            .add(CalendarEvent.selectYear(widget.years[needPage]));

      } else {
        print(controller.page);
        check(needPage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    print('need jump');

    if(controller.state != null && controller.page < 1 &&  widget.page == 1) {
      print('jump');
      controller.jumpToPage(1);
    }


    return CarouselSlider.builder(

        disableGesture: false,
        carouselController: controller,
        itemCount: widget.years.length,
        itemBuilder: (context, carouselIndex, real) {
          return Column(
            children: [
              SizedBox(height: 30,),

              Text(widget.years[real].year.toString(), style: AppStyles.bodyBlack.copyWith(fontSize: 26, fontWeight: carouselIndex == widget.page ? FontWeight.w600 : null),),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(

                  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.years[carouselIndex].calendars.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                    childAspectRatio: 1.07), itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context
                          .read<CalendarBloc>()
                          .add(CalendarEvent.selectCalendar(widget.years[carouselIndex].calendars[index]));


                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: SizedBox(
                          width: size.width / 3,
                          height: size.width / 3,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(DateTime(2024, widget.years[carouselIndex].calendars[index].month).getMonthName(), style: AppStyles.bodyBlack.copyWith(fontSize: 14, fontWeight:  FontWeight.w600),),
                              IgnorePointer(
                                child: MiniCalendarWidget(
                                  calendarDays: widget.years[carouselIndex].calendars[index].days,
                                  month: widget.years[carouselIndex].calendars[index].month,
                                  activeCalendarDays:  widget.years[carouselIndex].calendars[index]
                                      .days
                                      .where(
                                          (element) => element.date.month == widget.years[carouselIndex].calendars[index].month)
                                      .toList(),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              Divider(indent: 0, endIndent: 0, color: Color(0xffCDCDCD),)

            ],
          );
        },
        options: CarouselOptions(
            scrollDirection: Axis.vertical,
            initialPage: widget.page == 0 ? 1 : widget.page,
            pageSnapping: true,
            disableCenter: true,
            padEnds: false,
            enableInfiniteScroll: false,
            onPageChanged: (page, _) {
              print('page $page');
              check(page);
            },
            viewportFraction: 800 / size.height,
            aspectRatio: 375 / 800));
  }
}

