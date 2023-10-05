import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio_site/data/data_providers/profile_data_provider.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileDataProviders profileDataProviders = ProfileDataProviders();
  ProfileCubit() : super(ProfileState.initial());
  Future<void> getProfileData() async {
    final a = await profileDataProviders.getProfileData();
    emit(
      state.copyWith(
        expertIn: a['expert-in'],
        familiarWith: a['familiar-with'],
        resumeLink: a['resume-link'],
        whoAmI: a['who-am-i'],
      ),
    );
  }
}
