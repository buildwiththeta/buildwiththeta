export function toRect(
  x: number,
  y: number,
  width: number,
  height: number,
  parentNode: boolean
) {
  const finalX = x < 0 && parentNode ? 0 : x;
  const finalY = y < 0 && parentNode ? 0 : y;
  if (!parentNode) {
    return {
      left: finalX,
      top: finalY,
      right: finalX + width,
      bottom: finalY + height
    };
  }
  return {
    left: finalX,
    top: finalY,
    right: 390 - (finalX + width),
    bottom: 844 - (finalY + height)
  };
}
