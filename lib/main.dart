import 'package:fintechreal/core/router/router.dart';
import 'package:fintechreal/cubit/monitoring/algoritm/algoritm_states.dart';
import 'package:fintechreal/cubit/monitoring/all%20card/all_card_states.dart';
import 'package:fintechreal/cubit/monitoring/home/home_states.dart';
import 'package:fintechreal/cubit/monitoring/mentors/mentors_states.dart';
import 'package:fintechreal/cubit/monitoring/see%20backed/see_backed_states.dart';
import 'package:fintechreal/cubit/user%20settings/user_info/user_info_states.dart';
import 'package:fintechreal/provider/auth/otp_code_provider.dart';
import 'package:fintechreal/provider/auth/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => LoginProvider(), // LoginProvider
      ),
      ChangeNotifierProvider(
        create: (context) => AuthTwoProvider(), // AuthTwoProvider
      ),
      BlocProvider(
        create: (context) => UserInfoCubit(), // UserInfoCubit
      ),
      BlocProvider(
        create: (context) => AllCardCubit(), // AllCardCubit
      ),
      BlocProvider(
        create: (context) => HomeCubit(), // HomeCubit
      ),
      BlocProvider(
        create: (context) => MentorsCubit(), // MentorsCubit
      ),
      BlocProvider(
        create: (context) => AlgoritmCubit(), // AlgoritmCubit
      ),
      BlocProvider(
        create: (context) => SeeBackedCubit(), // SeeBackedCubit
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.router.generate,
      initialRoute: "splash",
    );
  }
}
