import { FFill } from "./fill";
import { FSize } from "./size";
import { FTextTypeInput } from "./text_type_input";

export class FShadow {
  x: FTextTypeInput;
  y: FTextTypeInput;
  spread: FTextTypeInput;
  blur: FTextTypeInput;
  fill: FFill;
  opacity: FSize;

  constructor({
    x,
    y,
    spread,
    blur,
    fill,
    opacity
  }: {
    x: FTextTypeInput;
    y: FTextTypeInput;
    spread: FTextTypeInput;
    blur: FTextTypeInput;
    fill: FFill;
    opacity: FSize;
  }) {
    this.x = x;
    this.y = y;
    this.spread = spread;
    this.blur = blur;
    this.fill = fill;
    this.opacity = opacity;
  }

  toJson(): { [key: string]: any } {
    const json: { [key: string]: any } = {
      x: this.x.toJson(),
      y: this.y.toJson(),
      s: this.spread.toJson(),
      b: this.blur.toJson(),
      f: this.fill.toJson(),
      o: this.opacity.toJson()
    };

    for (const key in json) {
      if (json[key] === null || json[key] === undefined) {
        delete json[key];
      }
    }

    return json;
  }
}
