import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

import '../../../../../utils/constants/shift_type.dart';
import '../../../../../utils/size_utils.dart';

class EmptyScheduleRow extends StatelessWidget {
  final bool selected;
  final ScheduleRowController controller;

  EmptyScheduleRow({
    super.key,
    required this.controller,
    required this.selected,
  });

  final oController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: controller.active,
        builder: (context, snapshot) {
          final active = snapshot.data ?? false;


          Future.delayed(Duration(milliseconds: 100), () {
            if(active) showDialog(context: context,
                barrierDismissible: false,
                barrierColor: Colors.transparent,
                builder: (_) {
              return _dialog(context);
            });
          });

          return StreamBuilder<int>(
              stream: controller.position,
              builder: (context, pos) {
                final position = pos.data ?? controller.lastPosition;
                return Container(
                  height: 60,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: (selected || active)
                            ? AppColors.blue
                            : AppColors.dividerGrey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IgnorePointer(
                    ignoring: !(snapshot.data ?? false),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            controller.types.length,
                            (index) {
                              final e = controller.types[index];
                              return GestureDetector(
                                onTap: () {
                                  controller.choosePositionForChange(index);
                                  Future.delayed(Duration(milliseconds: 100), () {
                                    controller.changeActive(true);
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: e == null
                                      ? DottedBorder(
                                          borderType: BorderType.Circle,
                                          color: position == index &&
                                                  (selected || active)
                                              ? AppColors.blue
                                              : AppColors.dividerGrey,
                                          child: Container(
                                            height: 44,
                                            width: 44,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                color: position == index &&
                                                        (selected || active)
                                                    ? AppColors.blue
                                                    : AppColors.dividerGrey,
                                              ),
                                            ),
                                          ),
                                        )
                                      : ShiftWidget(
                                          shiftType: e,
                                          showSvg: e != ShiftType.both,
                                        ),
                                ),
                              );
                            },
                          )),
                    ),
                  ),
                );
              });
        });
  }



  Widget _dialog (BuildContext context) {
    StreamSubscription? _sub;
    _sub = controller.active.listen((event) {
      if(!event) {
        Navigator.pop(context);
        _sub?.cancel();
      }
    });


    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              _sub?.cancel();
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.transparent,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 220),
              child: Container(
                height: 80,
                width: size.width - 20,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 10),
                        spreadRadius: 10,
                        blurRadius: 10)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: ([
                    ShiftType.day,
                    ShiftType.night,
                    ShiftType.both,
                    ShiftType.empty
                  ]
                      .map<Widget>((e) => StreamBuilder<int>(
                      stream: controller.position,
                      builder: (context, pos) {
                        final position = pos.data ?? controller.lastPosition;
                        return ShiftWidget(
                          selected:
                          controller.types[position] ==
                              e,
                          onTap: () {
                            controller.selectType(e);
                          },
                          shiftType: e,
                          showSvg: e != ShiftType.both,
                          size: 56,
                        );
                      }))
                      .toList() +
                      [
                        StreamBuilder<int>(
                            stream: controller.position,
                            builder: (context, pos) {
                              return InkWell(
                                onTap: () {

                                    controller.selectType(null);
                                },
                                child: Container(
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: SizedBox(
                                    height: 42,
                                    width: 38,
                                    child: Center(
                                      child: SvgPicture.asset(
                                        'assets/images/svg/trash.svg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class ScheduleRowController {
  bool _active = false;

  List<ShiftType?> _types = [null, null, null, null, null, null, null];

  List<ShiftType?> get types => _types;

  int _position = 0;

  int get lastPosition => _position;

  final StreamController<int> _controller = StreamController<int>.broadcast();

  final StreamController<bool> _controllerComplete = StreamController<bool>.broadcast();

  Stream<bool> get canComplete => _controllerComplete.stream;


  Stream<int> get position => _controller.stream;

  final StreamController<bool> _activeController =
      StreamController<bool>.broadcast();

  Stream<bool> get active => _activeController.stream;

  void changeActive(bool value) {
    _active = value;
    _activeController.add(_active);
  }

  void choosePositionForChange(int pos) {
    debugPrint(pos.toString());
    _position = pos;
    _controller.add(pos);
  }

  void selectType(ShiftType? type) {
    _types.removeAt(_position);
    _types.insert(_position, type);
    _controllerComplete.add(false);

    if (_position == _types.length - 1) {
      changeActive(false);
      _controllerComplete.add(true);
    }
    if (type != null)
      choosePositionForChange(_position < _types.length - 1 ?_position + 1 : _types.length - 1);
    else
      choosePositionForChange(_position > 1 ? _position - 1 : 0);
  }
}
