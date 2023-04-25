// ignore_for_file: public_member_api_docs

const suffix = 'plans/';

enum UserPlan {
  free,
  basic,
  pro,
  ultra,
}

class PlanResponse {
  const PlanResponse({
    required this.isPremium,
    required this.plan,
    this.downgradedStillActive,
  });

  static PlanResponse fromJson(final Map<String, dynamic> json) {
    final isPremium = json['isPremium'] as bool? ?? false;
    final plan = (json['premiumPlan'] as int?) == 1 ||
            (json['premiumPlan'] as int?) == 99
        ? UserPlan.pro
        : (json['premiumPlan'] as int?) == 2 ||
                (json['premiumPlan'] as int?) == 199
            ? UserPlan.ultra
            : (json['premiumPlan'] as int?) == 3 ||
                    (json['premiumPlan'] as int?) == 299
                ? UserPlan.basic
                : UserPlan.free;
    final downgradedStillActive = !isPremium && plan != UserPlan.free;
    return PlanResponse(
      isPremium: isPremium,
      plan: plan,
      downgradedStillActive: downgradedStillActive,
    );
  }

  final bool isPremium;
  final UserPlan plan;
  final bool? downgradedStillActive;
}
