import { DBKeys } from "./key_constants";
import { FSize } from "./features/size";
import { FBorderRadius } from "./features/border_radius";
import { FMainAxisAlignment } from "./features/main_axis_alignment";
import { FCrossAxisAlignment } from "./features/cross_axis_alignment";
import { FMargin } from "./features/margin";
import { FFill } from "./features/fill";

export class CNode {
  id: string;
  name: string;
  type: string;
  parent_id: string | undefined;
  attributes: Object;
  rect_props: Object;

  constructor(node: SceneNode, parentNode: boolean) {
    this.id = node.id;
    this.name = node.name;
    this.type = this.toType(node);
    this.parent_id = parentNode ? undefined : node.parent?.id;
    this.attributes = {
      ...this.toFFill(node),
      ...this.toEffects(node),
      ...this.toVisibility(node),
      ...this.toPadding(node),
      ...this.toSpacingBetweenItems(node),
      ...this.toAxisAlignment(node),
      ...this.toWidth(node),
      ...this.toHeight(node)
    };
    this.rect_props = {
      ...this.toRect(node.x, node.y, node.width, node.height, parentNode),
      ...this.toBorderRadius(node)
    };
  }

  toType(node: SceneNode): string {
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

  toHeight(node: SceneNode) {
    if ("height" in node) {
      return {
        [DBKeys.height]: new FSize(node.height.toString()).toJson()
      };
    }
  }

  toWidth(node: SceneNode) {
    if ("width" in node) {
      return {
        [DBKeys.width]: new FSize(node.width.toString()).toJson()
      };
    }
  }

  toAxisAlignment(node: SceneNode) {
    if ("layoutMode" in node) {
      if (node.layoutMode == "VERTICAL" || node.layoutMode == "HORIZONTAL") {
        return {
          [DBKeys.crossAxisAlignment]: new FMainAxisAlignment(
            node.counterAxisAlignItems
          ).toJson(),
          [DBKeys.mainAxisAlignment]: new FCrossAxisAlignment(
            node.primaryAxisAlignItems
          ).toJson()
        };
      }
    }
  }

  toPadding(node: SceneNode) {
    if ("layoutMode" in node) {
      if (node.layoutMode == "VERTICAL" || node.layoutMode == "HORIZONTAL") {
        return {
          [DBKeys.padding]: new FMargin([
            node.paddingLeft,
            node.paddingTop,
            node.paddingRight,
            node.paddingBottom
          ]).toJson()
        };
      }
    }
  }

  toSpacingBetweenItems(node: SceneNode) {
    if ("layoutMode" in node) {
      if (node.layoutMode == "VERTICAL" || node.layoutMode == "HORIZONTAL") {
        return {
          [DBKeys.spacing]: new FSize(node.itemSpacing.toString()).toJson()
        };
      }
    }
  }

  toVisibility(node: SceneNode) {
    return {
      [DBKeys.visibility]: node.visible
    };
  }

  toEffects(node: SceneNode) {
    if ("effects" in node) {
      if (node.effects instanceof Array) {
        if (node.effects.length != 0) {
          if (node.effects[0].type == "LAYER_BLUR") {
            const blur = node.effects[0] as BlurEffect;
            if (blur.visible) {
              return {
                [DBKeys.layerBlur]: blur.radius
              };
            }
          } else if (node.effects[0].type == "BACKGROUND_BLUR") {
            const blur = node.effects[0] as BlurEffect;
            if (blur.visible) {
              return {
                [DBKeys.backgroundBlur]: blur.radius
              };
            }
          }
        }
      }
    }
  }

  toRect(
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

  toFFill(node: SceneNode) {
    let key = "fills";
    if (
      node.type == "TEXT" ||
      node.type == "RECTANGLE" ||
      node.type == "FRAME" ||
      node.type == "COMPONENT"
    ) {
      if (key in node) {
        if (node.fills != null) {
          if (node.fills instanceof Array) {
            if (node.fills.length != 0) {
              if (node.fills[0].type == "SOLID") {
                const fill = node.fills[0] as SolidPaint;
                return {
                  [DBKeys.fill]: FFill.fromSolidPaint(fill).toJson()
                };
              }
              if (node.fills[0].type == "GRADIENT_LINEAR") {
                const fill = node.fills[0] as GradientPaint;
                return {
                  [DBKeys.fill]: FFill.fromLinearGradientPaint(fill).toJson()
                };
              }
              if (node.fills[0].type == "GRADIENT_RADIAL") {
                const fill = node.fills[0] as GradientPaint;
                return {
                  [DBKeys.fill]: FFill.fromRadialGradientPaint(fill).toJson()
                };
              }
            }
          }
        }
      }
    }
  }

  toBorderRadius(node: SceneNode) {
    if ("cornerRadius" in node) {
      if (node.cornerRadius !== figma.mixed) {
        return {
          [DBKeys.borderRadius]: new FBorderRadius(
            [
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius
            ],
            [
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius
            ],
            [
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius,
              node.cornerRadius
            ]
          ).toJson()
        };
      }
    }
    if (
      "topLeftRadius" in node &&
      "topRightRadius" in node &&
      "bottomLeftRadius" in node &&
      "bottomRightRadius" in node
    ) {
      return {
        [DBKeys.borderRadius]: new FBorderRadius(
          [
            node.topLeftRadius,
            node.topRightRadius,
            node.bottomRightRadius,
            node.bottomLeftRadius
          ],
          [
            node.topLeftRadius,
            node.topRightRadius,
            node.bottomRightRadius,
            node.bottomLeftRadius
          ],
          [
            node.topLeftRadius,
            node.topRightRadius,
            node.bottomRightRadius,
            node.bottomLeftRadius
          ]
        ).toJson()
      };
    }
  }
}
