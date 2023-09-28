class NodeProps {
  const NodeProps(this.name, this.id);

  final String name;
  final String id;
}

class SocialCardComponentAssets {
  SocialCardComponentAssets();

  String get name => 'SocialCard';

  final image =
      const NodeProps('Image', '5977c63f-1b63-4931-b1b8-548e869e6fff');
  final container =
      const NodeProps('Container', '4858f25b-799b-450a-89aa-132c6c6380ea');
  final column =
      const NodeProps('Column', '1c8d1630-53d0-466e-80ec-e8cd1475d51c');
  final scaffold =
      const NodeProps('Scaffold', '22afd67e-9bc1-4118-946a-ed806574d356');
  final title =
      const NodeProps('Title', 'f6832c96-4203-4da4-91e9-98c4e43a9742');
  final container1 =
      const NodeProps('Container1', 'c0d4fcc0-6706-4e18-8380-c3d51626674a');
  final container2 =
      const NodeProps('Container2', '8bc4c329-e016-4bb9-913f-63cd72942a01');
}

class UIBoxAssets {
  const UIBoxAssets();

  static final socialCard = SocialCardComponentAssets();
}
