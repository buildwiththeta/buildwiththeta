import { FFill } from "../features/fill";
import { DBKeys } from "../key_constants";

export function toFFill(node: SceneNode) {
  let key = "fills";
  if (
    node.type == "TEXT" ||
    node.type == "RECTANGLE" ||
    node.type == "FRAME" ||
    node.type == "COMPONENT"
  ) {
    if (key in node) {
      if (node.fills != null) {
        if (node.fills instanceof Array) {
          if (node.fills.length != 0) {
            if (node.fills[0].type == "SOLID") {
              const fill = node.fills[0] as SolidPaint;
              return {
                [DBKeys.fill]: FFill.fromSolidPaint(fill).toJson()
              };
            }
            if (node.fills[0].type == "GRADIENT_LINEAR") {
              const fill = node.fills[0] as GradientPaint;
              return {
                [DBKeys.fill]: FFill.fromLinearGradientPaint(fill).toJson()
              };
            }
            if (node.fills[0].type == "GRADIENT_RADIAL") {
              const fill = node.fills[0] as GradientPaint;
              return {
                [DBKeys.fill]: FFill.fromRadialGradientPaint(fill).toJson()
              };
            }
          }
        }
      }
    }
  }
}
