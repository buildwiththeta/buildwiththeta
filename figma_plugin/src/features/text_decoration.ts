export enum TextDecoration {
  none,
  underline,
  lineThrough,
  overline
}

export class FTextDecoration {
  decoration: TextDecoration;

  constructor(decoration: TextDecoration) {
    this.decoration = decoration;
  }

  toJson(): string {
    switch (this.decoration) {
      case TextDecoration.lineThrough:
        return "l";
      case TextDecoration.underline:
        return "u";
      case TextDecoration.none:
        return "n";
      default:
        return "n";
    }
  }
  static createTextDecorationFromValue(value: string): FTextDecoration {
    switch (value) {
      case "STRIKETHROUGH":
        return new FTextDecoration(TextDecoration.lineThrough);
      case "UNDERLINE":
        return new FTextDecoration(TextDecoration.underline);
      case "NONE":
        return new FTextDecoration(TextDecoration.none);
      default:
        return new FTextDecoration(TextDecoration.none);
    }
  }
}
