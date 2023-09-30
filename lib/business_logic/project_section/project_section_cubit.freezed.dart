// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_section_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectSectionState {
  List<ProjectModel> get projectList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectSectionStateCopyWith<ProjectSectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSectionStateCopyWith<$Res> {
  factory $ProjectSectionStateCopyWith(
          ProjectSectionState value, $Res Function(ProjectSectionState) then) =
      _$ProjectSectionStateCopyWithImpl<$Res, ProjectSectionState>;
  @useResult
  $Res call({List<ProjectModel> projectList});
}

/// @nodoc
class _$ProjectSectionStateCopyWithImpl<$Res, $Val extends ProjectSectionState>
    implements $ProjectSectionStateCopyWith<$Res> {
  _$ProjectSectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectList = null,
  }) {
    return _then(_value.copyWith(
      projectList: null == projectList
          ? _value.projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProjectSectionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProjectModel> projectList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProjectSectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectList = null,
  }) {
    return _then(_$InitialImpl(
      projectList: null == projectList
          ? _value._projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<ProjectModel> projectList})
      : _projectList = projectList;

  final List<ProjectModel> _projectList;
  @override
  List<ProjectModel> get projectList {
    if (_projectList is EqualUnmodifiableListView) return _projectList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectList);
  }

  @override
  String toString() {
    return 'ProjectSectionState(projectList: $projectList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._projectList, _projectList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_projectList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ProjectSectionState {
  const factory _Initial({required final List<ProjectModel> projectList}) =
      _$InitialImpl;

  @override
  List<ProjectModel> get projectList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
