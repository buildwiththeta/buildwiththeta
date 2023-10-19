export enum TextAlign {
    left,
    right,
    center,
    justify
}
export enum TextAlignFigma{
    LEFT = "LEFT",
    RIGHT = "RIGHT",
    CENTER = "CENTER",
    JUSTIFIED = "JUSTIFIED"
}
export class FTextAlign {
  align: TextAlign;

  constructor(align: TextAlign) {
    this.align = align;
  }

  toJson(): string {
    switch (this.align) {
        case TextAlign.left:
            return "left";
        case TextAlign.right:
            return "right";
        case TextAlign.center:
            return "center";
        case TextAlign.justify:
            return "justify";
        default:
            return "left";
    }
  }
    static createTextAlignFromValue(value: string): FTextAlign {
    switch (value) {
      case "LEFT":
        return new FTextAlign(TextAlign.left);
      case "RIGHT":
        return new FTextAlign(TextAlign.right);
      case "CENTER":
        return new FTextAlign(TextAlign.center);
      case "JUSTIFIED":
        return new FTextAlign(TextAlign.justify);
      default:
        return new FTextAlign(TextAlign.left);
    }
  }
}
