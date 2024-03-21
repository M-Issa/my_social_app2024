import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/shared/bloc_observer.dart';
import 'package:my_social_app/shared/local/cash_helper.dart';
import 'package:my_social_app/shared/network/dio_helper.dart';

import 'consts/styles/themes.dart';
import 'modules/login/social_login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const SimpleBlocObserver();
  DioHelper.init();
  await CashHelper.init();
 //  Widget widget;
 //  bool? onBoarding=CashHelper.getData(key:'onBoarding',)??null;
 //  token=CashHelper.getData(key:'token',)!=null?CashHelper.getData(key:'token',):'';
 //  print('token11');
 //  print(token);
 // if(onBoarding != null){
 //   if(token !=''){
 //     widget=ShopLayoutScreen();
 //   }else{
 //     widget=ShopLoginScreen();
 //   }
 // }else{
 //   widget=OnBoardingScreen();
 // }
 //
 //  bool isDark=false;
 //  bool? isDark0 = CashHelper.getBoolean(key: 'isDark');
 //  if (isDark0 != null){
 //    isDark=isDark0;
 //  }else
 //    {
 //      isDark=true;
 //    }
  runApp(MyApp());
  // print('onBoarding is  $onBoarding');
}

class MyApp extends StatelessWidget {
  // final bool isDark;
  // final Widget startWidget;
  // MyApp({required this.isDark,required this.startWidget});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home:SocialLoginScreen(),
    );
  }
}


