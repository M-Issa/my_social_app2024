
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/modules/login/cubit/social_login_state.dart';

class SocialLoginCubit extends Cubit<SocialLoginStates> {
  SocialLoginCubit() : super(SocialLoginInitialState());
  ///socialLoginCubit(socialLoginStates x) : super(socialLoginInitialState());

  static SocialLoginCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  IconData suffix=Icons.visibility_outlined;

  void changeIconVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(SocialLoginIconVisibility());
  }


  ///for login data
  // SocialLoginModel? loginModel;
  // void userLogin({
  //   required String email,
  //   required String password,
  // }) {
  //   emit(SocialLoginLodingState());
  //   DioHelper.postData(
  //     url: LOGIN,
  //     data: {
  //       'email': email,
  //       'password': password,
  //     },
  //   ).then((value) {
  //     //print(value.data);
  //     if (value.data != null) {
  //       loginModel = SocialLoginModel.fromJson(value.data);
  //       pass=password;
  //       print (pass);
  //       // Use loginModel here
  //     } else {
  //       // Handle empty response or unexpected format
  //       emit(SocialLoginErrorState());
  //     }
     //loginModel=SocialLoginModel.fromJson(value.data);//this data don't mean same data in model
     // print(loginModel?.data?.name);
      //print(token);
      //token=(loginModel?.data?.token!=null?loginModel?.data?.token:null)!;
    //   emit(SocialLoginSuccessState(loginModel!));
    // });
        //.catchError((error) {
      //emit(SocialLoginErrorState(error));
    //});
  // }


}
