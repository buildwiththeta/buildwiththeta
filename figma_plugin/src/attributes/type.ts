export function toType(node: SceneNode): string {
  if ("fills" in node) {
    if (node.fills instanceof Array) {
      if (node.fills.length != 0) {
        if (node.fills[0]?.type == "IMAGE") {
          return "image";
        }
      }
    }
  }
  if ("layoutMode" in node) {
    if (node.layoutMode == "HORIZONTAL") {
      return "row";
    } else if (node.layoutMode == "VERTICAL") {
      return "column";
    }
  }
  switch (node.type) {
    case "TEXT":
      return "text";
    case "RECTANGLE":
      return "container";
    case "FRAME":
      return "container";
    case "GROUP":
      return "container";
    case "INSTANCE":
      return "instance";
    case "COMPONENT":
      return "container";
    default:
      throw new Error(`Unknown type: ${node.type}`);
  }
}
