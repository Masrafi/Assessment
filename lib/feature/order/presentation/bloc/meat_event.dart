
import 'package:equatable/equatable.dart';

abstract class MeatEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadMeatEvent extends MeatEvent {}
