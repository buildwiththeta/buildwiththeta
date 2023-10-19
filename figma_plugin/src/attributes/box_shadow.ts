import { DBKeys } from "../key_constants";
import { FShadow } from "../features/box_shadow";
import { FTextTypeInput } from "../features/text_type_input";
import { FFill, FFillType, FFillElement } from "../features/fill";
import { FSize } from "../features/size";
import { Helpers } from "../helpers/helpers";

export function toBoxShadow(node: SceneNode) {
  if ("effects" in node) {
    if (node.effects instanceof Array) {
      if (node.effects.length != 0) {
        if (node.effects[0].type == "DROP_SHADOW") {
          const shadow = node.effects[0] as DropShadowEffect;
          if (shadow.visible) {
            return {
              [DBKeys.shadows]: new FShadow({
                x: new FTextTypeInput({
                  value: shadow.offset.x.toString()
                }),
                y: new FTextTypeInput({
                  value: shadow.offset.y.toString()
                }),
                spread: new FTextTypeInput({
                  value: shadow.spread?.toString() ?? ""
                }),
                blur: new FTextTypeInput({
                  value: shadow.radius.toString()
                }),
                fill: new FFill({
                  type: FFillType.solid,
                  levels: [
                    new FFillElement({
                      color: Helpers.rgbToHex(
                        shadow.color.r,
                        shadow.color.g,
                        shadow.color.b
                      ),
                      stop: 0,
                      opacity: shadow.color.a
                    })
                  ]
                }),
                opacity: new FSize(shadow.color.a.toString())
              }).toJson()
            };
          }
        }
      }
    }
  }
}
