import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'service_entity.freezed.dart';
part 'service_entity.g.dart';

@freezed
class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    required final String title,
    required final String description,
    required final String url,
    required final String color,
  }) = _ServiceEntity;

  const ServiceEntity._();

  factory ServiceEntity.fromJson(Map<String, Object?> json) => _$ServiceEntityFromJson(json);
}