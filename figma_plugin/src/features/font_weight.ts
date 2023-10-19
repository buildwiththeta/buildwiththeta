import { FontWeight } from "../flutter/font_weight";

export class FFontWeight {
  constructor({ weight = FontWeight.w400 }: { weight?: FontWeight }) {
    this.weight = weight;
  }

  weight: FontWeight;

  toJson(): string {
    return FFontWeight._convertValueToJson(this.weight);
  }

  private static _convertValueToJson(value: FontWeight): string {
    switch (value) {
      case FontWeight.w100:
        return "1";
      case FontWeight.w200:
        return "2";
      case FontWeight.w300:
        return "3";
      case FontWeight.w400:
        return "4";
      case FontWeight.w500:
        return "5";
      case FontWeight.w600:
        return "6";
      case FontWeight.w700:
        return "7";
      case FontWeight.w800:
        return "8";
      case FontWeight.w900:
        return "9";
      default:
        return "4";
    }
  }

  static createFontWeightFromValue(value: number): FFontWeight {
    let fontWeight: FontWeight;
    if (value <= 100) {
      fontWeight = FontWeight.w100;
    } else if (value <= 200) {
      fontWeight = FontWeight.w200;
    } else if (value <= 300) {
      fontWeight = FontWeight.w300;
    } else if (value <= 400) {
      fontWeight = FontWeight.w400;
    } else if (value <= 500) {
      fontWeight = FontWeight.w500;
    } else if (value <= 600) {
      fontWeight = FontWeight.w600;
    } else if (value <= 700) {
      fontWeight = FontWeight.w700;
    } else if (value <= 800) {
      fontWeight = FontWeight.w800;
    } else {
      fontWeight = FontWeight.w900;
    }

    return new FFontWeight({ weight: fontWeight });
  }
}
