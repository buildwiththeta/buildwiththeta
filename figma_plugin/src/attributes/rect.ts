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
  const finalX = x < 0 && parentNode ? 0 : x;
  const finalY = y < 0 && parentNode ? 0 : y;
  if (!parentNode) {
    return Rect.fromLTRB(finalX, finalY, finalX + width, finalY + height);
  }
  return Rect.fromLTRB(
    finalX,
    finalY,
    390 - (finalX + width),
    844 - (finalY + height)
  );
}
