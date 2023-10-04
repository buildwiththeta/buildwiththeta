import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

import './theta_ui_assets.dart';

class Untitled1Widget extends StatelessWidget {
  const Untitled1Widget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.untitled1.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class PaywallWidget extends StatelessWidget {
  const PaywallWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.paywall.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class PaywallMultiPlanWidget extends StatelessWidget {
  const PaywallMultiPlanWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.paywallMultiPlan.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class PaywallTeamWidget extends StatelessWidget {
  const PaywallTeamWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.paywallTeam.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class LPSectionWidget extends StatelessWidget {
  const LPSectionWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.lPSection.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class PaywallMultiPlanCopyWidget extends StatelessWidget {
  const PaywallMultiPlanCopyWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.paywallMultiPlanCopy.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class PaywallCopyWidget extends StatelessWidget {
  const PaywallCopyWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.paywallCopy.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class HomepageSidebarButtonElementWidget extends StatelessWidget {
  const HomepageSidebarButtonElementWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.homepageSidebarButtonElement.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}

class HomepageSidebarMenuWidget extends StatelessWidget {
  const HomepageSidebarMenuWidget({
    super.key,
    this.controller,
    this.overrides,
    this.workflows,
  });

  final UIBoxController? controller;
  final List<Override>? overrides;
  final List<Workflow>? workflows;

  @override
  Widget build(BuildContext context) {
    return UIBox(
      ThetaAssets.homepageSidebarMenu.name,
      controller: controller,
      overrides: overrides,
      workflows: workflows,
    );
  }
}
