import { FSize } from "../features/size";
import { DBKeys } from "../key_constants";

export function toSpacingBetweenItems(node: SceneNode) {
  if ("layoutMode" in node) {
    if (node.layoutMode == "VERTICAL" || node.layoutMode == "HORIZONTAL") {
      return {
        [DBKeys.spacing]: new FSize(node.itemSpacing.toString()).toJson()
      };
    }
  }
}
