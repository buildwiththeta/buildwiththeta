import { toLayerBlur } from "./attributes/layer_blur";
import { toBackgroundBlur } from "./attributes/background_blur";
import { toVisibility } from "./attributes/visibility";
import { toPadding } from "./attributes/padding";
import { toWidth } from "./attributes/width";
import { toHeight } from "./attributes/height";
import { toRect } from "./attributes/rect";
import { toType } from "./attributes/type";
import { toSizeRange } from "./attributes/size_range";
import { toMargin } from "./attributes/margin";
import { toFFill } from "./attributes/fill";
import { toBorderRadius } from "./attributes/border_radius";
import { toSpacingBetweenItems } from "./attributes/spacing_between_items";
import { toAxisAlignment } from "./attributes/axis_alignment";
export class CNode {
  id: string;
  name: string;
  type: string;
  parent_id: string | undefined;
  properties: Object;
  rect_properties: Object;

  constructor(node: SceneNode, parentNode: boolean) {
    this.id = node.id;
    this.name = node.name;
    this.type = toType(node);
    this.parent_id = parentNode ? undefined : node.parent?.id;
    this.properties = {
      ...this.toGlobalAttributes(node),
      ...this.toTypeAttributes(node)
    };
    this.rect_properties = {
      ...toRect(node.x, node.y, node.width, node.height, parentNode)
    };
  }

  ///global attributes for all nodes
  toGlobalAttributes(node: SceneNode) {
    return {
      ...toMargin(node),
      ...toSizeRange(node),
      ...toLayerBlur(node),
      ...toBackgroundBlur(node),
      ...toVisibility(node),
      ...toPadding(node),
      ...toWidth(node),
      ...toHeight(node)
    };
  }

  /// node type attributes
  toTypeAttributes(node: SceneNode) {
    const nodeType = this.type;
    if (nodeType === "text") {
      ///Text
      return { ...toFFill(node) };
    } else if (nodeType === "container") {
      ///Container
      return { ...toFFill(node), ...toBorderRadius(node) };
    } else if (nodeType === "column" || nodeType === "row") {
      ///Row or Column
      return {
        ...toSpacingBetweenItems(node),
        ...toAxisAlignment(node)
      };
    }
  }
}
