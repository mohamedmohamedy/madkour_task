import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'colors_manager.dart';
import 'fonts_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

abstract class ThemeManager {
  static ThemeData getApplicationDarkTheme() {
    return ThemeData(
        useMaterial3: true,

        // Scaffold
        scaffoldBackgroundColor: ColorsManager.sBlack,

        // AppBar
        appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
          ),
          backgroundColor: ColorsManager.sBlack,
          iconTheme: const IconThemeData(color: ColorsManager.mainWhiteColor),
          titleTextStyle: getSemiBoldStyle(
              fontName: FontsName.generalFont, fontSize: FontsSize.s18),
        ),

        // Swatch color
        primarySwatch: ColorsManager.swatchBlue,

        // Text Themes
        textTheme: TextTheme(
          // Main font
          titleLarge: getBoldStyle(
              fontName: FontsName.titlesFont, fontSize: FontsSize.s18),
          titleMedium: getSemiBoldStyle(
              fontName: FontsName.titlesFont, fontSize: FontsSize.s14),
          titleSmall: getMediumStyle(
              fontName: FontsName.titlesFont, fontSize: FontsSize.s12),

          // Details font
          bodyLarge: getRegularStyle(
              fontName: FontsName.detailsFont, fontSize: FontsSize.s16),
          bodyMedium: getMediumStyle(
              fontName: FontsName.detailsFont, fontSize: FontsSize.s14),
          bodySmall: getLightStyle(
              fontName: FontsName.detailsFont, fontSize: FontsSize.s12),

          // General Font
          headlineSmall: getRegularStyle(
              fontName: FontsName.generalFont, fontSize: FontsSize.s16),
          headlineMedium: getSemiBoldStyle(
              fontName: FontsName.generalFont, fontSize: FontsSize.s14),
          headlineLarge: getBoldStyle(
              fontName: FontsName.generalFont, fontSize: FontsSize.s25),
        ),

        // Text Form Field theme
        inputDecorationTheme: InputDecorationTheme(
          focusColor: ColorsManager.tffEnabled,
          fillColor: ColorsManager.tffBackground,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DoubleManager.d_8.sp)),
          contentPadding: EdgeInsets.all(DoubleManager.d_8.sp),
          hintStyle: getSemiBoldStyle(
              fontName: FontsName.generalFont,
              color: ColorsManager.gGrey,
              fontSize: FontsSize.s14),
          labelStyle: getRegularStyle(
              fontName: FontsName.generalFont,
              color: ColorsManager.swatchBlue,
              fontSize: FontsSize.s14),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
            borderSide: const BorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
            borderSide: const BorderSide(color: ColorsManager.swatchBlue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
          ),
          prefixIconColor: ColorsManager.gGrey,
          suffixIconColor: ColorsManager.gGrey,
          errorStyle: getMediumStyle(
              fontName: FontsName.generalFont,
              color: Colors.red,
              fontSize: FontsSize.s14),
        ),
        // Icons
        iconTheme: IconThemeData(
            size: DoubleManager.d_18.sp, color: ColorsManager.swatchBlue),

        // Checkbox
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DoubleManager.d_5.sp)),
          side: BorderSide(
            style: BorderStyle.solid,
            color: ColorsManager.swatchBlue,
            width: DoubleManager.d_05.w,
          ),
        ),

        // Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            minimumSize: Size(double.infinity, DoubleManager.d_7.h),
            backgroundColor: ColorsManager.swatchBlue,
            foregroundColor: ColorsManager.mainWhiteColor,
            textStyle: getSemiBoldStyle(
              fontName: FontsName.generalFont,
              fontSize: FontsSize.s16,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              textStyle: getBoldStyle(
                  fontName: FontsName.generalFont, fontSize: FontsSize.s12)),
        ),

        // Dialogs
        dialogBackgroundColor: ColorsManager.tffBackground,
        dialogTheme: DialogTheme(
          titleTextStyle: getRegularStyle(
              fontName: FontsName.generalFont, fontSize: FontsSize.s12),
        ),

        // List tile
        listTileTheme: ListTileThemeData(
          textColor: ColorsManager.swatchBlue,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: DoubleManager.d_15),
          titleTextStyle: getBoldStyle(
            fontName: FontsName.titlesFont,
            fontSize: FontsSize.s16,
          ),
          subtitleTextStyle: getRegularStyle(
            fontName: FontsName.generalFont,
            fontSize: FontsSize.s14,
          ),
        ),

        // Floating action button
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: ColorsManager.swatchBlue,
            foregroundColor: ColorsManager.mainWhiteColor,
            shape: OvalBorder()),

        // dropdown
        dropdownMenuTheme: DropdownMenuThemeData(
            inputDecorationTheme: InputDecorationTheme(
              focusColor: ColorsManager.tffEnabled,
              fillColor: ColorsManager.mainWhiteColor,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(DoubleManager.d_8.sp)),
              contentPadding: EdgeInsets.all(DoubleManager.d_8.sp),
              hintStyle: getSemiBoldStyle(
                  fontName: FontsName.generalFont,
                  color: ColorsManager.gGrey,
                  fontSize: FontsSize.s14),
              labelStyle: getRegularStyle(
                  fontName: FontsName.generalFont,
                  color: ColorsManager.swatchBlue,
                  fontSize: FontsSize.s14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
                borderSide: const BorderSide(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
                borderSide: const BorderSide(color: ColorsManager.swatchBlue),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DoubleManager.d_8.sp),
              ),
              prefixIconColor: ColorsManager.gGrey,
              suffixIconColor: ColorsManager.gGrey,
              errorStyle: getMediumStyle(
                  fontName: FontsName.generalFont,
                  color: Colors.red,
                  fontSize: FontsSize.s14),
            ),
            textStyle: getMediumStyle(
              fontName: FontsName.generalFont,
              fontSize: FontsSize.s12,
              color: ColorsManager.mainMadkourColor,
            )));
  }
}
