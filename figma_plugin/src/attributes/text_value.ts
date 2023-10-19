import { DBKeys } from "../key_constants";
import { FTextTypeInput } from "../features/text_type_input";

export function toTextValue(node: SceneNode) {
  if (node.type === "TEXT") {
    const text = node as TextNode;
    return {
      [DBKeys.value]: new FTextTypeInput({ value: text.characters }).toJson()
    };
  }
}
