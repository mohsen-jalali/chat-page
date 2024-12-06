import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@unfreezed
class UserEntity extends Equatable with _$UserEntity {
  const UserEntity._();

  factory UserEntity({
    required String id,
    required String name,
    required String avatar,
  }) = _UserEntity;

  @override
  List<Object?> get props => [
    id,
  ];
}