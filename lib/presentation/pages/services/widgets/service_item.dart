import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/pages/services/bloc/models/service_entity.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

class ServiceItem extends StatelessWidget {
  final ServiceEntity serviceEntity;
  final Function()? onTap;
  const ServiceItem({super.key, required this.serviceEntity, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 109,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.fromHex(serviceEntity.color)
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(serviceEntity.title, style: AppStyles.mediumHead,),
                Text(serviceEntity.description, style: AppStyles.body,)
              ],
            )),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,

              ),
              child: Center(child: SvgPicture.asset('assets/images/svg/link.svg', color: AppColors.fromHex(serviceEntity.color),)),
            )
          ],
        ),
      ),
    );
  }
}
