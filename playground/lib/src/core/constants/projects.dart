import 'package:flutter/material.dart';
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
final defaultTextStyles = [
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Hero',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(size: 40, sizeTablet: 48, sizeDesktop: 64),
    fontWeight: const FFontWeight(
      weight: FontWeight.w500,
    ),
  ),
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Headline',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(size: 32, sizeTablet: 40, sizeDesktop: 48),
    fontWeight: const FFontWeight(
      weight: FontWeight.w600,
    ),
  ),
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Subheadline',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(size: 24, sizeTablet: 32, sizeDesktop: 40),
    fontWeight: const FFontWeight(
      weight: FontWeight.w300,
    ),
  ),
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Important',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(size: 20, sizeTablet: 24, sizeDesktop: 32),
    fontWeight: const FFontWeight(
      weight: FontWeight.w600,
    ),
  ),
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Paragraph',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(size: 16, sizeTablet: 16, sizeDesktop: 18),
    fontWeight: const FFontWeight(),
  ),
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Paragraph Bold',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(),
    fontWeight: const FFontWeight(
      weight: FontWeight.w600,
    ),
  ),
  TextStyleEntity(
    branchID: defaultBranch.id,
    name: 'Detail',
    fontFamily: 'Poppins',
    fontSize: const FFontSize(size: 12, sizeTablet: 12, sizeDesktop: 14),
    fontWeight: const FFontWeight(
      weight: FontWeight.w500,
    ),
  ),
];
final defaultColorStyles = [
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Accent',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '845EC2', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '845EC2', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Background / Primary',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'ffffff', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '000000', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Background / Secondary',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'f1f1f1', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '181818', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Background / Details',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'e7e7e7', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '333333', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Text / Primary',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '000000', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'ffffff', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Text / Secondary',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '444444', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'eaeaea', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Text / Details',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '888888', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'a1a1a1', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Success',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '00C9A7', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: '00C9A7', stop: 0)],
    ),
  ),
  ColorStyleEntity(
    branchID: defaultBranch.id,
    name: 'Error',
    light: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'FF6F91', stop: 0)],
    ),
    dark: const FFill(
      type: FFillType.solid,
      levels: [FFillElement(color: 'FF6F91', stop: 0)],
    ),
  ),
];
