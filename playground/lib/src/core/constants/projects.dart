import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

final defaultProject = ProjectEntity(
  id: 'a',
  name: 'Playground',
  teamId: '',
  defaultBranchId: '',
  updatedAt: DateTime.now(),
  createdAt: DateTime.now(),
  isPublic: false,
);
final defaultBranch = BranchEntity(
  id: 'a',
  projectID: 'a',
  defaultPageID: 'a',
  name: 'Main',
  description: '',
  createdAt: DateTime.now(),
);
const defaultPage = PageEntity(
  id: 'a',
  branchID: 'a',
  name: 'Homepage',
  stabilID: 'a',
);
final defaultNodes = [
  ScaffoldOpenNode(id: 'a'),
];
