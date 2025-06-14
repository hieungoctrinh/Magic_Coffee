import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magic_coffee/core/base/page/base_scafold.dart';
import 'package:magic_coffee/core/config/resources/color.dart';
import 'package:magic_coffee/core/config/resources/dimens.dart';
import 'package:magic_coffee/core/config/resources/styles.dart';
import 'package:magic_coffee/gen/translations.g.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_coffee/utils/style_utils.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showAppBar: false,
      showBackButton: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: Dimens.d300.h,
              decoration: const BoxDecoration(color: colorPrimary),
              margin: EdgeInsets.only(top: Dimens.d62.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: double.infinity,
                    height: Dimens.d200.h,
                    fit: BoxFit.none,
                  ),
                  Text(
                    LocaleKeys.magicCoffee.tr(),
                    style: AppTextStyle.reenieText.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 25),
              child: Text(
                LocaleKeys.feelYourselfLikeABarista.tr(),
                style: AppTextStyle.regularText.copyWith(
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              LocaleKeys.magicCoffeeOnOrder.tr(),
              style: AppTextStyle.regularText.copyWith(color: colorStroke),
              textAlign: TextAlign.center,
            ),
            spaceH48,
            Padding(
              padding: const EdgeInsets.only(left: 264, bottom: 50),
              child: ClipOval(
                child: Container(
                  width: Dimens.d64.w,
                  height: Dimens.d52.h,
                  color: colorPrimary,
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
