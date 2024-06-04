import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

import '../../../resources/app_colors.dart';

class ShiftWidget extends StatelessWidget {
  final ShiftType shiftType;
  final bool selected;
  final Function()? onTap;
  final double? size;
  final bool showSvg;
  final bool showBorder;

  const ShiftWidget(
      {super.key,
      required this.shiftType,
      this.onTap,
      this.showSvg = true,
      this.size,
      this.showBorder = true,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    final double _size = size ?? 44;
    final List<String> svgPaths = showSvg
        ? () {
            const String start = 'assets/images/svg/';
            if (shiftType == ShiftType.day) {
              return ['${start}sun.svg'];
            }
            if (shiftType == ShiftType.night) {
              return ['${start}moon.svg'];
            }
            if (shiftType == ShiftType.both) {
              return [('${start}sun.svg'), '${start}moon.svg'];
            }
            return <String>[];
          }()
        : [];
    final List<Color> colors = () {
      if (shiftType == ShiftType.day) {
        return [AppColors.day];
      }
      if (shiftType == ShiftType.night) {
        return [AppColors.night];
      }
      if (shiftType == ShiftType.both) {
        return [AppColors.day, AppColors.night];
      }
      return <Color>[Colors.white];
    }();
    if (svgPaths.length > 1) {
      debugPrint('more');
      return GestureDetector(
        onTap: onTap,
        child: Row(
          children: List.generate(svgPaths.length, (index) {
            return Container(
              width: _size,
              height: _size,
              decoration: BoxDecoration(
                  borderRadius: index == 0
                      ? BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100))
                      : index == svgPaths.length - 1
                          ? BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100))
                          : null,
                  color: colors[index],
                  border:
                  index == 0
                      ? Border(
                      left: BorderSide(color: selected ? AppColors.blue : Colors.transparent),
                      top: BorderSide(color: selected ? AppColors.blue : Colors.transparent),
                      bottom: BorderSide(color: selected ? AppColors.blue : Colors.transparent),
                  )
                      : index == svgPaths.length - 1
                      ? Border(
                    right: BorderSide(color: selected ? AppColors.blue : Colors.transparent),
                    top: BorderSide(color: selected ? AppColors.blue : Colors.transparent),
                    bottom: BorderSide(color: selected ? AppColors.blue : Colors.transparent),) :
            Border(
            top: BorderSide(color: selected ? AppColors.blue : Colors.transparent),
            bottom: BorderSide(color: selected ? AppColors.blue : Colors.transparent),)),
              child: Center(
                  child: SvgPicture.asset(
                svgPaths[index],
                height: 22,
              )),
            );
          }),
        ),
      );
    }
    if (colors.length > 1) {
      debugPrint('colors.length > 1');

      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
              color: selected ? AppColors.blue : Colors.transparent,
              shape: BoxShape.circle),
          padding: EdgeInsets.all(2),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Row(
                children: List.generate(colors.length, (index) {
                  return HalfCircle(
                    left: index == 0,
                    width: _size - 4,
                    child: Container(
                      width: _size / 2,
                      height: _size,
                      decoration: BoxDecoration(color: colors[index]),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
            color: colors[0],
            shape: BoxShape.circle,
            border: selected
                ? Border.all(color: AppColors.blue)
                : showBorder
                    ? Border.all(color: AppColors.dividerGrey)
                    : null),
        child: shiftType == ShiftType.empty
            ? null
            : Center(
                child: SvgPicture.asset(
                svgPaths[0],
                height: 22,
              )),
      ),
    );
  }
}

class HalfCircle extends StatelessWidget {
  final bool left;
  final double width;
  final Widget child;

  const HalfCircle(
      {super.key,
      required this.left,
      required this.width,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 2,
      height: width,
      decoration: BoxDecoration(),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),

        width: width / 2,
        height: width,
        child: child,
      ),
    );
  }
}
