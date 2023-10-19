import { DBKeys } from "../key_constants";

export function toTextValue(node: SceneNode) {
  if (node.type === "TEXT") {
    const text = node as TextNode;
    return {
      [DBKeys.value]: text.characters
    };
  }
}
