import { DBKeys } from "../key_constants";
export function toLayerBlur(node: SceneNode) {
  if ("effects" in node) {
    if (node.effects instanceof Array) {
      if (node.effects.length != 0) {
        if (node.effects[0].type == "LAYER_BLUR") {
          const blur = node.effects[0] as BlurEffect;
          if (blur.visible) {
            return {
              [DBKeys.layerBlur]: blur.radius
            };
          }
        }
      }
    }
  }
}
