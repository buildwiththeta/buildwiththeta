import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'intrinsic_state_generator.dart';

Builder intrinsicStateBuilder(BuilderOptions options) =>
    SharedPartBuilder([IntrinsicStateGenerator()], 'intrinsic_state_builder');
