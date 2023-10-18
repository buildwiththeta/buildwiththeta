import { DBKeys } from "../key_constants";
import { FBorderRadius } from "../features/border_radius";

export function toBorderRadius(node: SceneNode) {
  if ("cornerRadius" in node) {
    if (node.cornerRadius !== figma.mixed) {
      return {
        [DBKeys.borderRadius]: new FBorderRadius(
          [
            node.cornerRadius,
            node.cornerRadius,
            node.cornerRadius,
            node.cornerRadius
          ],
          [
            node.cornerRadius,
            node.cornerRadius,
            node.cornerRadius,
            node.cornerRadius
          ],
          [
            node.cornerRadius,
            node.cornerRadius,
            node.cornerRadius,
            node.cornerRadius
          ]
        ).toJson()
      };
    }
  }
  if (
    "topLeftRadius" in node &&
    "topRightRadius" in node &&
    "bottomLeftRadius" in node &&
    "bottomRightRadius" in node
  ) {
    return {
      [DBKeys.borderRadius]: new FBorderRadius(
        [
          node.topLeftRadius,
          node.topRightRadius,
          node.bottomRightRadius,
          node.bottomLeftRadius
        ],
        [
          node.topLeftRadius,
          node.topRightRadius,
          node.bottomRightRadius,
          node.bottomLeftRadius
        ],
        [
          node.topLeftRadius,
          node.topRightRadius,
          node.bottomRightRadius,
          node.bottomLeftRadius
        ]
      ).toJson()
    };
  }
}
