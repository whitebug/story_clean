import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/app/theme/theme.dart';
import 'package:story_domain/story_domain.dart';

/// Playing card widget
class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.cardEntity,
    Key? key,
  }) : super(key: key);

  final CardEntity cardEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: FocusableActionDetector(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10.sp),
            ),
          ),
          child: SizedBox(
            width: 80.sp,
            height: 120.sp,
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '${cardEntity.points}',
                        style: textBold12White,
                      ),
                    ],
                  ),
                  Text(
                    '${cardEntity.points}',
                    style: textBold16White,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 2,
                        child: Text(
                          '${cardEntity.points}',
                          style: textBold12White,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
