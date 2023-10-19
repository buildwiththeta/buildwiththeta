import { FFill } from "../features/fill";
import { DBKeys } from "../key_constants";
export class Helpers {
  static rgbToHex(r: number, g: number, b: number): string {
    // Convert the 0-1 range to 0-255
    const red = Math.round(r * 255);
    const green = Math.round(g * 255);
    const blue = Math.round(b * 255);

    // Convert to hex and make sure each value is two digits
    const hexRed = (red < 16 ? "0" : "") + red.toString(16);
    const hexGreen = (green < 16 ? "0" : "") + green.toString(16);
    const hexBlue = (blue < 16 ? "0" : "") + blue.toString(16);

    // Combine into a single hex color string
    return "#" + hexRed + hexGreen + hexBlue;
  }

  static fillConverter(node: SceneNode): FFill | null {
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
                return FFill.fromSolidPaint(fill);
              }
              if (node.fills[0].type == "GRADIENT_LINEAR") {
                const fill = node.fills[0] as GradientPaint;
                return FFill.fromLinearGradientPaint(fill);
              }
              if (node.fills[0].type == "GRADIENT_RADIAL") {
                const fill = node.fills[0] as GradientPaint;
                return FFill.fromRadialGradientPaint(fill);
              }
            }
          }
        }
      }
    }

    return null;
  }
}
