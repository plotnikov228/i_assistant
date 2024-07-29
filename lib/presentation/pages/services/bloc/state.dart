part of 'bloc.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState.Loaded({
    required List<ServiceEntity> services,
}
      ) = _Loaded;

}