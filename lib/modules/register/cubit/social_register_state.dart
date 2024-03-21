


abstract class SocialRegisterStates {}

class SocialRegisterInitialState extends SocialRegisterStates{}
class SocialRegisterIconVisibility extends SocialRegisterStates{}




class SocialRegisterLodingState extends SocialRegisterStates{}
class SocialRegisterSuccessState extends SocialRegisterStates
{
  final String error;
  SocialRegisterSuccessState(this.error);
}
class SocialRegisterErrorState extends SocialRegisterStates{
  // final String error;
  // SocialRegisterErrorState(this.error);
}


