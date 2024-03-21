
import 'package:bloc/bloc.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_social_app/modules/register/cubit/social_register_state.dart';

class SocialRegisterCubit extends Cubit<SocialRegisterStates> {
  SocialRegisterCubit() : super(SocialRegisterInitialState());
  ///SocialRegisterCubit(SocialRegisterStates x) : super(SocialRegisterInitialState());

  static SocialRegisterCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  IconData suffix=Icons.visibility_outlined;

  void changeIconVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(SocialRegisterIconVisibility());
  }


  ///for Register data
  // SocialLoginModel? registerModel;
  // void userRegister({
  //   required String email,
  //   required String password,
  //   required String name,
  //   required String phone,
  // }) {
  //   emit(SocialRegisterLodingState());
  //   DioHelper.postData(
  //     url: REGISTER,
  //     data: {
  //        'name':name,
  //       'email': email,
  //       'password': password,
  //        'phone' :phone,
  //     },
  //   ).then((value) {
  //     //print(value.data);
  //     if (value.data != null) {
  //       registerModel = SocialLoginModel.fromJson(value.data);
  //       pass=password;
  //       print (pass);
  //       // Use RegisterModel here
  //     } else {
  //       // Handle empty response or unexpected format
  //       emit(SocialRegisterErrorState());
  //     }
  //
  //     emit(SocialRegisterSuccessState(registerModel!));
  //   });
}
