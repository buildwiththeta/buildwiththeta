import { Rect, RectProperties, ResponsiveRect } from "../features/rect";
export function toRect(
  x: number,
  y: number,
  width: number,
  height: number,
  parentNode: boolean
) {
  return new RectProperties(
    new ResponsiveRect(
      calculateRect(x, y, width, height, parentNode),
      null,
      null,
      null
    )
  ).toJson();
}

function calculateRect(
  x: number,
  y: number,
  width: number,
  height: number,
  parentNode: boolean
) {
  if (!parentNode) {
    return Rect.fromLTWH(0, 0, width, height);
  }
  return Rect.fromLTWH(0, 0, width, height);
}
