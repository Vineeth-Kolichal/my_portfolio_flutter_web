part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({required String resumeLink, required String whoAmI,required String expertIn,required String familiarWith}) = _Initial;
  factory ProfileState.initial()=>const ProfileState(resumeLink: 'resumeLink', whoAmI: "I am a self-directed Flutter Developer with one year of hands-on experience. I have a bachelor's degree in computer science from the Kannur University, Kerala. I am proficient in mobile app development using Flutter. I am also familiar with web designing and backend development using Node.js, Express", expertIn:  "Flutter, Dart, BloC, Provider, GetX, REST API Integration, Firebase, Hive, SQFLite, Git, GitHub, MVVM, MVC, BLoC Architecture", familiarWith: "Firebase FCM, Google map, HTML, CSS, JavaScript, Bootstrap, Java, Node js, Express js, MongoDB",);
}
