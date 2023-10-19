import { DBKeys } from "../key_constants";
import { FTextStyle } from "../features/text_style";
import { FFill } from "../features/fill";
import { FFontSize } from "../features/font_size";
import { FFontWeight } from "../features/font_weight";
import { FTextDecoration, TextDecoration } from "../features/text_decoration";
import { FTextAlign, TextAlign } from "../features/text_align";
import { FFontStyle } from "../features/font_style";
import { FTextTypeInput } from "../features/text_type_input";
import { FontStyle } from "../features/font_style";
import { SizeUnit } from "../features/size";
import { Helpers } from "../helpers/helpers";

export function toTextStyle(node: SceneNode) {
  if (node.type === "TEXT") {
    const text = node as TextNode;
    let fontSize = new FFontSize({});
    let fill = new FFill({});
    let fontFamily = "";
    let fontWeight = new FFontWeight({});
    let textDecoration = new FTextDecoration(TextDecoration.none);
    let fontStyle = new FFontStyle({ value: FontStyle.normal });
    let letterSpacing = new FTextTypeInput({});
    let lineSpacing = new FTextTypeInput({});
    //FontSize
    if (text.fontSize !== figma.mixed) {
      fontSize = new FFontSize({ size: text.fontSize, unit: SizeUnit.pixel });
    }
    //Fill
    const fillConverted = Helpers.fillConverter(node);
    if (fillConverted != null) {
      fill = fillConverted;
    }
    // fontFamily || fontStyle
    if (text.fontName !== figma.mixed) {
      fontFamily = text.fontName.family;
      fontStyle = FFontStyle.createFontStyleFromValue(text.fontName.style);
    }
    // fontWeight
    if (text.fontWeight !== figma.mixed) {
      fontWeight = FFontWeight.createFontWeightFromValue(text.fontWeight);
    }
    // textDecoration,
    if (text.textDecoration !== figma.mixed) {
      textDecoration = FTextDecoration.createTextDecorationFromValue(
        text.textDecoration
      );
    }
    // textAlign,
    const textAlign = FTextAlign.createTextAlignFromValue(
      text.textAlignHorizontal
    );
    // textDirection,- empty

    // letterSpacing,
    if (text.letterSpacing !== figma.mixed && text.fontSize !== figma.mixed) {
      if (text.letterSpacing.unit === "PERCENT") {
        letterSpacing = new FTextTypeInput({
          value: ((text.letterSpacing.value / 100) * text.fontSize).toString()
        });
      } else {
        letterSpacing = new FTextTypeInput({
          value: text.letterSpacing.value.toString()
        });
      }
    }
    // lineSpacing,
    if (text.lineHeight !== figma.mixed && text.fontSize !== figma.mixed) {
      if (text.lineHeight.unit === "PERCENT") {
        lineSpacing = new FTextTypeInput({
          value: ((text.lineHeight.value / 100) * text.fontSize).toString()
        });
      } else if (text.lineHeight.unit === "PIXELS") {
        lineSpacing = new FTextTypeInput({
          value: text.lineHeight.value.toString()
        });
      } else {
        // Auto
      }
    }

    return {
      [DBKeys.textStyle]: new FTextStyle({
        fill: fill,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        textDecoration: textDecoration,
        textAlign: textAlign,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        lineSpacing: lineSpacing
      }).toJson()
    };
  }
}
