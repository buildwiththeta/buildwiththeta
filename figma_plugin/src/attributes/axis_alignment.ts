import { FMainAxisAlignment } from "../features/main_axis_alignment";
import { FCrossAxisAlignment } from "../features/cross_axis_alignment";
import { DBKeys } from "../key_constants";

export function toAxisAlignment(node: SceneNode) {
  if ("layoutMode" in node) {
    if (node.layoutMode == "VERTICAL" || node.layoutMode == "HORIZONTAL") {
      return {
        [DBKeys.crossAxisAlignment]: new FMainAxisAlignment(
          node.counterAxisAlignItems
        ).toJson(),
        [DBKeys.mainAxisAlignment]: new FCrossAxisAlignment(
          node.primaryAxisAlignItems
        ).toJson()
      };
    }
  }
}
