import { Dimensions, Platform, PixelRatio } from 'react-native';

const windowSize = Dimensions.get('window');

export const WINDOW_WIDTH = windowSize.width;
export const WINDOW_HEIGHT = windowSize.height;


export const SCREEN_SCALE_W = WINDOW_WIDTH / 750;
export const SCREEN_SCALE_H = WINDOW_HEIGHT / 1334;

export const NAV_HEIGHT = Platform.OS === 'ios' ? 64 : 44;


/// 自动比例适配宽度
///
/// - Parameter width: 宽度
/// - Returns: 返回比例适配后的宽度
function AUTO_W(width) {
  return width * SCREEN_SCALE_W;
}

/// 自动比例适配高度
///
/// - Parameter height: 高度
/// - Returns: 返回比例适配后的高度
function AUTO_H(height) {
  return height * SCREEN_SCALE_H;
}

/// 自动比例适配字体大小
///
/// - Parameter font: 字体size
/// - Returns: 返回比例适配后的大小
function AUTO_FONT(font) {
  return font * SCREEN_SCALE_W;
}

export default {
  AUTO_W,
  AUTO_H,
  AUTO_FONT,
};

// 背景颜色
export const TABBAR_ITEM_COLOR_ACTIVE = '#f23530';

// 字体样式
export const TEXT_SIZE_21 = 21;
export const TEXT_SIZE_20 = 20;
export const TEXT_SIZE_19 = 19;
export const TEXT_SIZE_18 = 18;

export const BORDER_SIZE = 1 / PixelRatio.get();
