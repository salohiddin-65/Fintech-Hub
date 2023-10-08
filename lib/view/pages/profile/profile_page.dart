import 'dart:io';
import 'package:fintechreal/core/extensions/build_context_size_widget.dart'
    show BuildContextSize;
import 'package:fintechreal/core/theme/fintech_theme.dart' show FintechColors;
import 'package:fintechreal/core/widgets/loading_widget.dart';
import 'package:fintechreal/core/widgets/menu-item/popup_menu_button_widget.dart'
    show PopupMenuButtonWidget;
import 'package:fintechreal/core/widgets/profile_screen_widget.dart'
    show ProfileScreenWidget;
import 'package:fintechreal/cubit/user%20settings/user_info/user_info_states.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:image_picker/image_picker.dart' show ImagePicker, ImageSource;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        Key,
        State,
        debugPrint,
        Widget,
        BuildContext,
        Scaffold,
        AppBar,
        SingleChildScrollView,
        Axis,
        Padding,
        EdgeInsets,
        Column,
        SizedBox,
        InkWell,
        showModalBottomSheet,
        RoundedRectangleBorder,
        BorderRadius,
        Radius,
        CrossAxisAlignment,
        Text,
        TextStyle,
        FontWeight,
        Row,
        Container,
        BoxDecoration,
        Colors,
        BorderRadiusDirectional,
        Icon,
        Icons,
        CircleAvatar,
        AssetImage,
        ClipRRect,
        Image,
        BoxFit,
        BoxShadow,
        Offset,
        Center;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // File image
  File? image;

  // Pick image service
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserInfoCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FintechColors.blackPearl,
          title: SvgPicture.asset(
            'assets/fintech_logo2.svg',
            width: 160,
          ),
          centerTitle: true,
          actions: const [
            PopupMenuButtonWidget(),
          ],
        ),
        body: BlocConsumer<UserInfoCubit, UserInfoStates>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is UserInfoLoadingState) {
              return const LoadingWidget();
            } else if (state is UserInfoErrorState) {
              return Center(
                child: Text(state.error),
              );
            } else if (state is UserInfoSuccessState) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.width * 0.05),
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      InkWell(
                        onTap: () => showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: context.height * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: context.height * 0.03),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: context.width * 0.055),
                                    child: const Text(
                                      "Choose photo or video",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: context.height * 0.02),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.width * 0.03,
                                    ),
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            pickImage(ImageSource.camera);
                                          },
                                          // Camera container
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey.shade200,
                                              borderRadius:
                                                  const BorderRadiusDirectional
                                                      .only(
                                                topStart: Radius.circular(10),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(50),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: context.width * 0.03),
                                        InkWell(
                                          onTap: () {
                                            pickImage(ImageSource.gallery);
                                          },
                                          // Gallery container
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey.shade200,
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(50),
                                              child: Icon(
                                                Icons.image,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        child: image == null
                            ? CircleAvatar(
                                radius: 50,
                                backgroundColor: FintechColors.lightGrey,
                                backgroundImage: const AssetImage(
                                  'assets/b8080715de29eabbbba78c1b2c9d70be.png',
                                ))
                            : SizedBox(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.file(
                                    image!,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      Text(
                        state.data.data!.username.toString(),
                        style: TextStyle(
                          color: FintechColors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FintechColors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 3),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.width * 0.05,
                            vertical: context.height * 0.017,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.data.data!.firstName.toString(),
                                style: TextStyle(
                                  color: FintechColors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              Text(
                                state.data.data!.lastName.toString(),
                                style: TextStyle(
                                  color: FintechColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              Text(
                                state.data.data!.mobile.toString(),
                                style: TextStyle(
                                  color: FintechColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            "Results",
                            style: TextStyle(
                              color: FintechColors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.015,
                      ),
                      const ProfileScreenWidget(),
                      const ProfileScreenWidget(),
                      const ProfileScreenWidget(),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      SizedBox(height: context.height * 0.07),
                    ],
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
