import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/app/theme/theme.dart';
import 'package:story_clean/features/home/widgets/cards/cards.dart';
import 'package:story_domain/story_domain.dart';

// Card size ratio
const double ratio = 240 / 336;

/// Playing card widget
class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.cardEntity,
    Key? key,
  }) : super(key: key);

  /// Info for a card (number of points)
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
              Radius.circular(5.sp),
            ),
          ),
          child: SizedBox(
            width: 120.sp * ratio,
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
                        style: textBold12,
                      ),
                    ],
                  ),
                  CardImage(
                    imageSide: 30.sp,
                    cardColorIndex: cardEntity.colorIndex?? 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 2,
                        child: Text(
                          '${cardEntity.points}',
                          style: textBold12,
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
