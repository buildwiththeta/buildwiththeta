import { FTextTypeInput } from "../features/text_type_input";
import { DBKeys } from "../key_constants";

export function toMaxLines(node: SceneNode) {
  if (node.type == "TEXT") {
    return {
      [DBKeys.maxLines]: new FTextTypeInput({
        value: node.maxLines?.toString()
      }).toJson()
    };
  }
}
