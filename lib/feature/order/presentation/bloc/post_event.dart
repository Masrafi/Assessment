// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadPostEvent extends PostEvent {
  Map<String, dynamic> data;
  LoadPostEvent({required this.data});
}
