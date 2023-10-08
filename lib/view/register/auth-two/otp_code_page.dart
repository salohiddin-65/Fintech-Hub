// ignore_for_file: must_be_immutable
import 'package:fintechreal/core/extensions/build_context_size_widget.dart'
    show BuildContextSize;
import 'package:fintechreal/core/theme/fintech_theme.dart'
    show FintechColors;
import 'package:fintechreal/core/widgets/pinput/src/pinput.dart'
    show Pinput;
import 'package:fintechreal/provider/auth/otp_code_provider.dart'
    show AuthTwoProvider;
import 'package:get_storage/get_storage.dart' show GetStorage;
import 'package:provider/provider.dart'
    show ChangeNotifierProvider, Provider, WatchContext;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Key,
        Widget,
        BuildContext,
        Scaffold,
        SafeArea,
        SingleChildScrollView,
        Axis,
        Column,
        SizedBox,
        Image,
        Padding,
        EdgeInsets,
        CrossAxisAlignment,
        Row,
        Text,
        TextStyle,
        FontWeight,
        MainAxisAlignment,
        TextInputType,
        Icon,
        Icons,
        ElevatedButton,
        Navigator;

class OtpCodePage extends StatelessWidget {
  const OtpCodePage({Key? key, required this.token}) : super(key: key);
  final String token;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthTwoProvider(),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: FintechColors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: context.height * 0.05),
                  Image.asset('assets/fintech_logo.png'),
                  SizedBox(height: context.height * 0.045),
                  SizedBox(height: context.height * 0.1),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width * 0.05),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tasdiqlash kodi:',
                          style: TextStyle(
                            color: FintechColors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width * 0.05),
                    child: Pinput(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: FintechColors.defaultPintheme,
                      // controller
                      controller:
                          context.watch<AuthTwoProvider>().otpCodeController,
                      length: 6, // pin code length
                      // on focused
                      focusedPinTheme: FintechColors.focusedPinTheme,
                      errorPinTheme: FintechColors.errorPinTheme,
                      keyboardType: TextInputType.number,
                      useNativeKeyboard: true,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.refresh,
                              size: 25,
                              color: FintechColors.black,
                            ),
                            SizedBox(width: context.width * 0.02),
                            Text(
                              'Kodni qayta yuborish',
                              style: TextStyle(
                                color: FintechColors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Title(
                        //       color: FintechColors.platinum,
                        //       child: const Column(
                        //         children: [
                        //           Center(
                        //             child: CircleAvatar(),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // TimerCountdown(
                        //   timeTextStyle: TextStyle(
                        //     color: FintechColors.black,
                        //     fontWeight: FontWeight.w500,
                        //     fontSize: 16,
                        //   ),
                        //   enableDescriptions: false,
                        //   format: CountDownTimerFormat.minutesSeconds,
                        //   endTime: DateTime.now().add(timerDuration),
                        //   onEnd: () {
                        //     setState(() {
                        //       showTextButton = true;
                        //     });
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: SizedBox(
            width: context.width * 0.3,
            height: context.height * 0.06,
            child: ElevatedButton(
              onPressed: () {
                Provider.of<AuthTwoProvider>(context, listen: false)
                    .authTwo(token: token)
                    .then((value) {
                  if (Provider.of<AuthTwoProvider>(context, listen: false)
                      .data!
                      .isNotEmpty) {
                    print(GetStorage().read("access_token"));
                    Navigator.pushNamedAndRemoveUntil(
                        context, "currentScreen", (route) => false);
                  }
                });
              },
              child: Text(
                'Next',
                style: TextStyle(
                  color: FintechColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
