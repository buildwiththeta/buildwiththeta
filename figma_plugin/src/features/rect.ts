export class Rect {
  public left: number;
  public top: number;
  public right: number;
  public bottom: number;

  constructor(left: number, top: number, right: number, bottom: number) {
    this.left = left;
    this.top = top;
    this.right = right;
    this.bottom = bottom;
  }

  static fromLTWH(
    left: number,
    top: number,
    width: number,
    height: number
  ): Rect {
    const right = left + width;
    const bottom = top + height;
    return new Rect(left, top, right, bottom);
  }

  static fromRBWH(
    right: number,
    bottom: number,
    width: number,
    height: number
  ): Rect {
    const left = right - width;
    const top = bottom - height;
    return new Rect(left, top, right, bottom);
  }

  static fromLTRB(
    left: number,
    top: number,
    right: number,
    bottom: number
  ): Rect {
    return new Rect(left, top, right, bottom);
  }

  get width(): number {
    return this.right - this.left;
  }

  get height(): number {
    return this.bottom - this.top;
  }
}

enum DeviceType {
  phone = "phone",
  tablet = "tablet",
  laptop = "laptop",
  desktop = "desktop"
}

export class ResponsiveRect {
  rectPhone: Rect;
  rectTablet?: Rect | null;
  rectLaptop?: Rect | null;
  rectDesktop?: Rect | null;

  constructor(
    rectPhone: Rect,
    rectTablet: Rect | null | undefined,
    rectLaptop: Rect | null | undefined,
    rectDesktop: Rect | null | undefined
  ) {
    this.rectPhone = rectPhone;
    this.rectTablet = rectTablet;
    this.rectLaptop = rectLaptop;
    this.rectDesktop = rectDesktop;
  }

  toJson(): { [key: string]: any } {
    const json: { [key: string]: any } = {};
    json[DeviceType.phone] = this.rectSingleToJSON(this.rectPhone);
    json[DeviceType.tablet] = this.rectSingleToJSON(this.rectTablet);
    json[DeviceType.laptop] = this.rectSingleToJSON(
      this.rectLaptop || this.rectDesktop
    );
    json[DeviceType.desktop] = this.rectSingleToJSON(this.rectDesktop);
    return json;
  }

  rectSingleToJSON(
    rect: Rect | null | undefined
  ): { [key: string]: any } | null {
    if (rect === null || rect === undefined) return null;
    return {
      left: rect.left,
      top: rect.top,
      right: rect.right,
      bottom: rect.bottom
    };
  }
}

enum ResponsiveAlignment {
  start,
  end,
  stretch
}

export class RectProperties {
  rect: ResponsiveRect;
  flipRectWhileResizing?: boolean;
  flipChild?: boolean;
  constraintsEnabled?: boolean;
  resizable?: boolean;
  movable?: boolean;
  hideHandlesWhenNotResizable?: boolean;
  verticalAlign?: ResponsiveAlignment;
  horizontalAlign?: ResponsiveAlignment;

  constructor(
    rect: ResponsiveRect,
    flipRectWhileResizing = true,
    flipChild = true,
    constraintsEnabled = false,
    resizable = true,
    movable = true,
    hideHandlesWhenNotResizable = true,
    verticalAlign: ResponsiveAlignment = ResponsiveAlignment.start,
    horizontalAlign: ResponsiveAlignment = ResponsiveAlignment.start
  ) {
    this.rect = rect;
    this.flipRectWhileResizing = flipRectWhileResizing;
    this.flipChild = flipChild;
    this.constraintsEnabled = constraintsEnabled;
    this.resizable = resizable;
    this.movable = movable;
    this.hideHandlesWhenNotResizable = hideHandlesWhenNotResizable;
    this.verticalAlign = verticalAlign;
    this.horizontalAlign = horizontalAlign;
  }

  toJson(): any {
    return {
      rect: this.rect.toJson(),
      flipRectWhileResizing: this.flipRectWhileResizing,
      flipChild: this.flipChild,
      constraintsEnabled: this.constraintsEnabled,
      resizable: this.resizable,
      movable: this.movable,
      hideHandlesWhenNotResizable: this.hideHandlesWhenNotResizable,
      vertical_align: ResponsiveAlignment[this.verticalAlign || 0],
      horizontal_align: ResponsiveAlignment[this.horizontalAlign || 0]
    };
  }
}
