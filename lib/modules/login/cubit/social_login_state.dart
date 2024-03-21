

abstract class SocialLoginStates {}

class SocialLoginInitialState extends SocialLoginStates{}
class SocialLoginIconVisibility extends SocialLoginStates{}




class SocialLoginLodingState extends SocialLoginStates{}
class SocialLoginSuccessState extends SocialLoginStates
{
  final String error;
  SocialLoginSuccessState(this.error);
}
class SocialLoginErrorState extends SocialLoginStates{
  // final String error;
  // SocialLoginErrorState(this.error);
}


