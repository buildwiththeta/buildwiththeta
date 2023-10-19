export enum FontStyle {
  normal = "normal",
  italic = "italic"
}

export class FFontStyle {
  value: FontStyle;

  constructor({ value = FontStyle.normal }: { value?: FontStyle }) {
    this.value = value;
  }

  toJson(): string {
    return this.value;
  }

  // figma -> "family":"Inter","style":"Bold Italic"},"
  // for all italic style return italic
  static createFontStyleFromValue(value: string): FFontStyle {
    switch (value) {
      case "Thin":
        return new FFontStyle({ value: FontStyle.normal });
      case "Extra Light":
        return new FFontStyle({ value: FontStyle.normal });
      case "Light":
        return new FFontStyle({ value: FontStyle.normal });
      case "Regular":
        return new FFontStyle({ value: FontStyle.normal });
      case "Medium":
        return new FFontStyle({ value: FontStyle.normal });
      case "Semi Bold":
        return new FFontStyle({ value: FontStyle.normal });
      case "Bold":
        return new FFontStyle({ value: FontStyle.normal });
      case "Extra Bold":
        return new FFontStyle({ value: FontStyle.normal });
      case "Black":
        return new FFontStyle({ value: FontStyle.normal });
      case "Thin Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Extra Light Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Light Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Medium Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Semi Bold Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Bold Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Extra Bold Italic":
        return new FFontStyle({ value: FontStyle.italic });
      case "Black Italic":
        return new FFontStyle({ value: FontStyle.italic });
      default:
        return new FFontStyle({ value: FontStyle.normal });
    }
  }
}
