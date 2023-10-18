export class FMainAxisAlignment {
  alignment: string;

  constructor(alignment: string) {
    this.alignment = alignment;
  }

  toJson(): string {
    switch (this.alignment) {
      case "MIN":
        return "MainAxisAlignment.start";
      case "MAX":
        return "MainAxisAlignment.end";
      case "CENTER":
        return "MainAxisAlignment.center";
      case "SPACE_BETWEEN":
        return "MainAxisAlignment.spaceBetween";
      default:
        return "MainAxisAlignment.start";
    }
  }
}
