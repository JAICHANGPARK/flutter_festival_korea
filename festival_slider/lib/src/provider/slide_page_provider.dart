import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final sliderPageController = StateProvider((ref)=> PageController());

final sliderPageIndexProvider = StateProvider<int>((ref)=> 0);
final sliderNavIndex = StateProvider((ref)=>0);