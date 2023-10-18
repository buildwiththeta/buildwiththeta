export class Alignment {
  x: number;
  y: number;

  constructor(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  toJson(): { x: number; y: number } {
    return {
      x: this.x,
      y: this.y
    };
  }

  static topLeft = new Alignment(-1, -1);
  static topCenter = new Alignment(0, -1);
  static topRight = new Alignment(1, -1);
  static centerLeft = new Alignment(-1, 0);
  static center = new Alignment(0, 0);
  static centerRight = new Alignment(1, 0);
  static bottomLeft = new Alignment(-1, 1);
  static bottomCenter = new Alignment(0, 1);
  static bottomRight = new Alignment(1, 1);
}
