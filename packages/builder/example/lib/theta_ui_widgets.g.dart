    import 'package:flutter/material.dart';
    import 'package:theta/theta.dart';
    import './theta_ui_assets.g.dart';

    final _client = ThetaClient('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI3NGQ3N2Q3Zi1iOWYyLTQ0YzItYTEzYS0zODY3NDUyNzU4OGEiLCJhbm9uX2tleSI6IjE0MzRkZDU5LTAwOWYtNGQ2Zi05OWE5LTQ4N2Y3Yzk1ODZhMCIsImlhdCI6MTY5NjU4NjY3NiwiZXhwIjoxNzI4MTQ0Mjc2LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.0IdY96MCqnrXbJyaMSfHRi-zBBjmBeGYbKz0Q6B2yeE');

    Future<void> initializeThetaClient() async {
      return await _client.initialize();
    }

        class Untitled1Widget extends StatelessWidget {
      const Untitled1Widget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.untitled1.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class PaywallWidget extends StatelessWidget {
      const PaywallWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.paywall.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class PaywallMultiPlanWidget extends StatelessWidget {
      const PaywallMultiPlanWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.paywallMultiPlan.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class PaywallTeamWidget extends StatelessWidget {
      const PaywallTeamWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.paywallTeam.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class LPSectionWidget extends StatelessWidget {
      const LPSectionWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.lPSection.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class PaywallMultiPlanCopyWidget extends StatelessWidget {
      const PaywallMultiPlanCopyWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.paywallMultiPlanCopy.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class PaywallCopyWidget extends StatelessWidget {
      const PaywallCopyWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.paywallCopy.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class HomepageSidebarButtonElementWidget extends StatelessWidget {
      const HomepageSidebarButtonElementWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.homepageSidebarButtonElement.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    

    class HomepageSidebarMenuWidget extends StatelessWidget {
      const HomepageSidebarMenuWidget({
        super.key, 
        required this.initialTheme,
        this.isLive = false,
        this.controller,
        this.overrides,
        this.workflows,
        this.placeholder,
        this.errorWidget,
      });

      final ThemeMode initialTheme;
      final bool isLive;
      final UIBoxController? controller;
      final List<Override>? overrides;
      final List<Workflow>? workflows;
      final Widget? placeholder;
      final Widget Function(Exception)? errorWidget;
    
      @override
      Widget build(BuildContext context) {
        return UIBox(
          ThetaAssets.homepageSidebarMenu.name,
          theme: initialTheme,
          isLive: isLive,
          client: _client,
          controller: controller,
          overrides: overrides,
          workflows: workflows, 
          placeholder: placeholder,
          errorWidget: errorWidget, 
        );
      }
    }
    
    