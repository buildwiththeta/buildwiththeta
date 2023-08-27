import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:theta_open_widgets/src/reflectable/nodes/nodes_generator.dart';

Builder nodeBuilder(BuilderOptions options) {
  return SharedPartBuilder(
    [NodeGenerator()],
    'nodebuilder',
  );
}

Builder nodeBuilderPart(BuilderOptions options) {
  return PartBuilder(
    [NodeGenerator()],
    '.nodebuilder.g.dart',
  );
}
