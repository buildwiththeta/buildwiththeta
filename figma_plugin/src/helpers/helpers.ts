export class Helpers {
  static rgbToHex(r: number, g: number, b: number): string {
    // Convert the 0-1 range to 0-255
    const red = Math.round(r * 255);
    const green = Math.round(g * 255);
    const blue = Math.round(b * 255);

    // Convert to hex and make sure each value is two digits
    const hexRed = (red < 16 ? "0" : "") + red.toString(16);
    const hexGreen = (green < 16 ? "0" : "") + green.toString(16);
    const hexBlue = (blue < 16 ? "0" : "") + blue.toString(16);

    // Combine into a single hex color string
    return "#" + hexRed + hexGreen + hexBlue;
  }
}
