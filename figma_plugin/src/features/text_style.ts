import { FFill } from "./fill";
import { FFontSize } from "./font_size";
import { FFontWeight } from "./font_weight";
import { FTextDecoration, TextDecoration } from "./text_decoration";
import { FTextAlign, TextAlign } from "./text_align";
import { FFontStyle } from "./font_style";
import { FTextDirection, TextDirection } from "./text_direction";
import { FTextTypeInput } from "./text_type_input";
import { FontStyle } from "./font_style";
import { DBKeys } from "../key_constants";
import { SizeUnit } from "../features/size";

export class FTextStyle {
  fill: FFill;
  fontSize: FFontSize;
  fontFamily: string;
  fontWeight: FFontWeight;
  textDecoration: FTextDecoration;
  textAlign: FTextAlign;
  fontStyle: FFontStyle;
  textDirection: FTextDirection;
  letterSpacing: FTextTypeInput;
  lineSpacing: FTextTypeInput;
  textStyleModel: string;

  constructor({
    fill = new FFill({}),
    fontSize = new FFontSize({ size: 16, unit: SizeUnit.pixel }),
    fontFamily = "",
    fontWeight = new FFontWeight({}),
    textDecoration = new FTextDecoration(TextDecoration.none),
    textAlign = new FTextAlign(TextAlign.left),
    fontStyle = new FFontStyle({ value: FontStyle.normal }),
    textDirection = new FTextDirection({ value: TextDirection.ltr }),
    letterSpacing = new FTextTypeInput({}),
    lineSpacing = new FTextTypeInput({}),
    textStyleModel = ""
  }: {
    fill?: FFill;
    fontSize?: FFontSize;
    fontFamily?: string;
    fontWeight?: FFontWeight;
    textDecoration?: FTextDecoration;
    textAlign?: FTextAlign;
    fontStyle?: FFontStyle;
    textDirection?: FTextDirection;
    letterSpacing?: FTextTypeInput;
    lineSpacing?: FTextTypeInput;
    textStyleModel?: string;
  }) {
    this.fill = fill;
    this.fontSize = fontSize;
    this.fontFamily = fontFamily;
    this.fontWeight = fontWeight;
    this.textDecoration = textDecoration;
    this.textAlign = textAlign;
    this.fontStyle = fontStyle;
    this.textDirection = textDirection;
    this.letterSpacing = letterSpacing;
    this.lineSpacing = lineSpacing;
    this.textStyleModel = textStyleModel;
  }

  toJson(): any {
    return {
      [DBKeys.fill]: this.fill.toJson(),
      [DBKeys.fontSize]: this.fontSize.toJson(),
      [DBKeys.fontFamily]: this.fontFamily,
      [DBKeys.fontWeight]: this.fontWeight.toJson(),
      [DBKeys.textDecoration]: this.textDecoration.toJson(),
      [DBKeys.textAlign]: this.textAlign.toJson(),
      [DBKeys.fontStyle]: this.fontStyle.toJson(),
      [DBKeys.textDirection]: this.textDirection.toJson(),
      [DBKeys.letterSpacing]: this.letterSpacing.toJson(),
      [DBKeys.lineSpacing]: this.lineSpacing.toJson(),
      [DBKeys.textStyleModel]: this.textStyleModel
    };
  }
}
