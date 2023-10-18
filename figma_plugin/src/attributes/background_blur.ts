import { DBKeys } from "../key_constants";

export function toBackgroundBlur(node: SceneNode) {
  if ("effects" in node) {
    if (node.effects instanceof Array) {
      if (node.effects.length != 0) {
        if (node.effects[0].type == "BACKGROUND_BLUR") {
          const blur = node.effects[0] as BlurEffect;
          if (blur.visible) {
            return {
              [DBKeys.backgroundBlur]: blur.radius
            };
          }
        }
      }
    }
  }
}
