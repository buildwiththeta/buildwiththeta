export class FCrossAxisAlignment {
  alignment: string;

  constructor(alignment: string) {
    this.alignment = alignment;
  }

  toJson(): string {
    switch (this.alignment) {
      case "MIN":
        return "CrossAxisAlignment.start";
      case "MAX":
        return "CrossAxisAlignment.end";
      case "CENTER":
        return "CrossAxisAlignment.center";
      case "BASELINE":
        return "CrossAxisAlignment.baseline";
      default:
        return "CrossAxisAlignment.start";
    }
  }
}
