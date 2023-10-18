import { Alignment } from "../flutter/alignment";
import { FBoxFit, BoxFit } from "./box_fit";
import { Helpers } from "../helpers/helpers";
/// Types of a FFill
export enum FFillType {
  /// Solid color
  solid,

  /// Linear gradient
  linearGradient,

  /// Radial gradient
  radialGradient,

  /// Color style
  style,

  /// Image
  image,

  /// None
  none
}

export class FFillElement {
  color: string;
  opacity: number;
  stop: number;

  constructor({
    color,
    stop,
    opacity = 1
  }: {
    color: string;
    stop: number;
    opacity?: number;
  }) {
    this.color = color;
    this.stop = stop;
    this.opacity = opacity >= 0 && opacity <= 1 ? opacity : 1;
  }

  static fromJson(json: {
    color: string;
    stop: number;
    opacity?: number;
  }): FFillElement {
    const opacity = json.opacity || 1;
    return new FFillElement({
      color: json.color,
      stop: json.stop,
      opacity: opacity
    });
  }

  toJson(): { color: string; stop: number; opacity: number } {
    return {
      color: this.color,
      stop: this.stop,
      opacity: this.opacity
    };
  }
}

export class FFill {
  levels: FFillElement[];
  type: FFillType;
  begin: Alignment | undefined;
  end: Alignment | undefined;
  center: Alignment | undefined;
  radius: number | undefined;
  boxFit: FBoxFit;
  constructor({
    levels = [new FFillElement({ color: "#000000", stop: 0 })],
    type = FFillType.solid,
    begin,
    end,
    center,
    radius,
    boxFit = new FBoxFit(BoxFit.cover)
  }: {
    levels?: FFillElement[];
    type?: FFillType;
    begin?: Alignment;
    end?: Alignment;
    center?: Alignment;
    radius?: number;
    boxFit?: FBoxFit;
  }) {
    this.levels = levels;
    this.type = type;
    this.begin = begin;
    this.end = end;
    this.center = center;
    this.radius = radius;
    this.boxFit = boxFit;
  }

  toJson(): any {
    const typeString = this.typeToString(this.type);
    const levelsMap = this.levels.map((e) => e.toJson());
    const json: any = {
      l: levelsMap,
      t: typeString,
      b: this.alignToJson(this.begin ?? null) || undefined,
      e: this.alignToJson(this.end ?? null) || undefined,
      c: this.alignToJson(this.center ?? null) || undefined,
      r: this.radius,
      bF: this.boxFit?.toJson() || new FBoxFit(BoxFit.cover).toJson()
    };

    for (const key in json) {
      if (json[key] === undefined) {
        delete json[key];
      }
    }
    return json;
  }

  typeToString(type: FFillType): string | undefined {
    switch (type) {
      case FFillType.solid:
        return "s";
      case FFillType.linearGradient:
        return "l";
      case FFillType.radialGradient:
        return "r";
      case FFillType.image:
        return "i";
      case FFillType.none:
        return "n";
      default:
        return undefined;
    }
  }

  alignToJson(value: Alignment | null): string | [number, number] | null {
    if (value === Alignment.bottomCenter) return "bC";
    if (value === Alignment.bottomLeft) return "bL";
    if (value === Alignment.bottomRight) return "bR";
    if (value === Alignment.center) return "c";
    if (value === Alignment.centerLeft) return "cL";
    if (value === Alignment.centerRight) return "cR";
    if (value === Alignment.topCenter) return "tC";
    if (value === Alignment.topLeft) return "tL";
    if (value === Alignment.topRight) return "tR";
    if (value === null) return null;

    return [value.x, value.y];
  }

  static fromSolidPaint(fill: SolidPaint) {
    return new FFill({
      type: FFillType.solid,
      levels: [
        new FFillElement({
          color: Helpers.rgbToHex(fill.color.r, fill.color.g, fill.color.b),
          stop: 0,
          opacity: fill.opacity
        })
      ]
    });
  }
  static fromLinearGradientPaint(fill: GradientPaint) {
    //TODO : calculate begin,end
    const transformMatrix = fill.gradientTransform;
    const beginX = transformMatrix[0][2];
    const beginY = transformMatrix[1][2];
    const endX = transformMatrix[0][2] + transformMatrix[0][0];
    const endY = transformMatrix[1][2] + transformMatrix[1][0];
    return new FFill({
      type: FFillType.linearGradient,
      levels: fill.gradientStops.map((stop, i) => {
        return new FFillElement({
          color: Helpers.rgbToHex(stop.color.r, stop.color.g, stop.color.b),
          stop: i,
          opacity: stop.color.a
        });
      }),
      begin: new Alignment(beginX, beginY),
      end: new Alignment(endX, endY)
    });
  }

  static fromRadialGradientPaint(fill: GradientPaint) {
    //TODO : calculate center,begin,end and radius
    const transformMatrix = fill.gradientTransform;
    const beginX = transformMatrix[0][2];
    const beginY = transformMatrix[1][2];
    const endX = transformMatrix[0][2] + transformMatrix[0][0];
    const endY = transformMatrix[1][2] + transformMatrix[1][0];
    return new FFill({
      type: FFillType.radialGradient,
      levels: fill.gradientStops.map((stop, i) => {
        return new FFillElement({
          color: Helpers.rgbToHex(stop.color.r, stop.color.g, stop.color.b),
          stop: i,
          opacity: stop.color.a
        });
      }),
      center: new Alignment((beginX + endX) / 2, (beginY + endY) / 2),
      begin: new Alignment(beginX, beginY),
      end: new Alignment(endX, endY),
      radius: Math.sqrt(Math.pow(endX - beginX, 2) + Math.pow(endY - beginY, 2))
    });
  }
}
