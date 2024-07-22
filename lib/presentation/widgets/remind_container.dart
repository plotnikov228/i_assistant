import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/size_utils.dart';
import '../resources/app_colors.dart';
import '../resources/app_styles.dart';
import 'buttons/custom_button.dart';
import 'custom_switcher.dart';
import 'dialogs/date_picker.dart';

class RemindContainer extends StatefulWidget {
  final DateTime? initialDateTime;
  final Function(bool)? onModeSwitch;
  final Function(DateTime)? onSwitch;

  const RemindContainer(
      {super.key, this.initialDateTime, this.onModeSwitch, this.onSwitch});

  @override
  State<RemindContainer> createState() => _RemindContainerState();
}

class _RemindContainerState extends State<RemindContainer>
    with TickerProviderStateMixin {
  late final AnimationController _sizeController;
  late final AnimationController _fadeController;
  late final _sizeAnim =
      Tween<double>(begin: 200, end: 400).animate(_sizeController);
  late final _fadeAnim = CurvedAnimation(
    parent: _fadeController,
    curve: Curves.easeIn,
  );

  bool remind = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sizeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _fadeController  = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _sizeController..addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158  + 100 * _sizeController.value,
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Divider(
            indent: 0,
            endIndent: 0,
            height: 1,
            thickness: 1,
            color: AppColors.lightGrey,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/clock.svg',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Напоминание',
                      style: AppStyles.mediumHead.copyWith(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                  height: 24,
                  child: CustomSwitch(
                    value: remind,
                    onChange: (val) {
                            remind = val;
                            if (remind) {
                              _sizeController.animateTo(1).then((value) {
                                _fadeController.animateTo(1);
                              });
                            } else {
                              _fadeController.animateBack(0,).then((value) {
                                _sizeController.animateBack(0).then((value) {

                                });

                              });

                            }
                            setState(() {});
                            widget.onModeSwitch?.call(val);
                          },
                  ),
                ),
              ],
            ),
          ),

          if (remind || _fadeController.value > 0)
            FadeTransition(
              opacity: _fadeAnim,
              child: SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Color(0xffEEF4FF)),
                        height: 30,
                        width: double.infinity,
                      ),
                      CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        initialDateTime: widget.initialDateTime,
                        onDateTimeChanged: (DateTime value) {
                          widget.onSwitch?.call(value);
                          setState(() {

                          });
                        },
                      ),
                    ],
                  )),
            ),
        ],
      ),
    );
  }
}
