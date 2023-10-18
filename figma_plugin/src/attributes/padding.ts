import { FMargin } from "../features/margin";
import { DBKeys } from "../key_constants";

export function toPadding(node: SceneNode) {
  if ("layoutMode" in node) {
    if (node.layoutMode == "VERTICAL" || node.layoutMode == "HORIZONTAL") {
      return {
        [DBKeys.padding]: new FMargin([
          node.paddingLeft,
          node.paddingTop,
          node.paddingRight,
          node.paddingBottom
        ]).toJson()
      };
    }
  }
}
