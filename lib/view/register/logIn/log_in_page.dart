import 'package:fintechreal/core/extensions/build_context_size_widget.dart'
    show BuildContextSize;
import 'package:fintechreal/core/theme/fintech_theme.dart'
    show FintechColors;
import 'package:fintechreal/core/widgets/loading_widget.dart'
    show LoadingWidget;
import 'package:fintechreal/provider/auth/login_provider.dart'
    show LoginProvider;
import 'package:fintechreal/view/register/auth-two/otp_code_page.dart'
    show OtpCodePage;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        Key,
        State,
        BuildContext,
        Widget,
        Scaffold,
        SafeArea,
        SingleChildScrollView,
        Axis,
        Column,
        SizedBox,
        Image,
        Center,
        Text,
        TextStyle,
        FontWeight,
        TextAlign,
        Padding,
        EdgeInsets,
        CrossAxisAlignment,
        TextFormField,
        TextInputType,
        InputDecoration,
        Color,
        OutlineInputBorder,
        Radius,
        BorderRadius,
        BorderSide,
        Icon,
        Icons,
        ElevatedButton,
        ButtonStyle,
        MaterialStateProperty,
        RoundedRectangleBorder,
        MaterialStatePropertyAll,
        Navigator,
        MaterialPageRoute;
import 'package:provider/provider.dart'
    show ChangeNotifierProvider, Provider, WatchContext;

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String? token;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      builder: (context, child) => _scaffold(context),
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: context.height * 0.05),
              Image.asset('assets/fintech_logo.png'),
              SizedBox(height: context.height * 0.045),
              Center(
                child: Text(
                  'Welcome to Fin-Tech \n Innovation Hub',
                  style: TextStyle(
                    color: FintechColors.butterflyBlue,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: context.height * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please log in to your account',
                      style: TextStyle(
                        color: FintechColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: context.height * 0.02),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width * 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: context.height * 0.06,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller:
                              Provider.of<LoginProvider>(context, listen: false)
                                  .phoneNumberController,
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(48, 168, 255, 0.6),
                            filled: true,
                            hintText: 'Enter phone number',
                            hintStyle: TextStyle(
                              color: FintechColors.white,
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: context.height * 0.02),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width * 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: context.height * 0.06,
                        child: TextFormField(
                          controller:
                              Provider.of<LoginProvider>(context, listen: false)
                                  .passwordController,
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(48, 168, 255, 0.6),
                            filled: true,
                            hintText: 'Enter password',
                            hintStyle: TextStyle(
                              color: FintechColors.white,
                            ),
                            suffixIcon:
                                const Icon(Icons.remove_red_eye_outlined),
                            suffixIconColor: FintechColors.white,
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.height * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.22),
                child: SizedBox(
                  width: double.infinity,
                  height: context.height * 0.05,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        FintechColors.butterflyBlue,
                      ),
                    ),
                    onPressed: () async {
                      Provider.of<LoginProvider>(context, listen: false)
                          .login()
                          .then((value) {
                        if (Provider.of<LoginProvider>(context, listen: false)
                            .data!
                            .isNotEmpty) {
                          token =
                              Provider.of<LoginProvider>(context, listen: false)
                                  .data!["data"]["token"]
                                  .toString();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpCodePage(token: token!),
                            ),
                          );
                        }
                      });
                    },
                    child: context.watch<LoginProvider>().isLoading
                        ? const LoadingWidget()
                        : Text(
                            'Log in',
                            style: TextStyle(
                              color: FintechColors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                  ),
                ),
              ),
              SizedBox(height: context.height * 0.02),
              Text(
                'Forgot password?',
                style: TextStyle(
                  color: FintechColors.dawn,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: context.height * 0.18),
              context.watch<LoginProvider>().error.isNotEmpty
                  ? Text(
                      context.watch<LoginProvider>().error,
                      style: TextStyle(
                        color: FintechColors.lavaRed,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
