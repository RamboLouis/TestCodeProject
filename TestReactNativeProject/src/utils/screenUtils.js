/**
 * 屏幕工具类
 * ui设计基准,iphone 6
 * width:750
 * height:1334
 */
import { Dimensions, PixelRatio, Platform } from 'react-native';

const screenW = Dimensions.get('window').width;
const screenH = Dimensions.get('window').height;
const fontScale = PixelRatio.getFontScale();

const SCREEN_SCALE_W = screenW / 750;
const SCREEN_SCALE_H = screenH / 1334;

const width6 = 750;
const height6 = 1334;

/**
 * 设置text为sp
 * @param size  sp
 * @returns {Number} dp
 */
function setSpText(size) {
  const scaleWidth = screenW / width6;
  const scaleHeight = screenH / height6;
  const scale = Math.min(scaleWidth, scaleHeight);
  let textSize;
  if (Platform.OS === 'ios') {
    textSize = Math.round((size * scale));
  } else {
    textSize = Math.round((size * scale) / fontScale);
  }
  return textSize;
}
/**
 * 屏幕适配,缩放size
 * @param size
 * @returns {Number}
 * @constructor
 */
function scaleSize(size) {
  const scaleWidth = screenW / width6;
  const scaleHeight = screenH / height6;
  const scale = Math.min(scaleWidth, scaleHeight);
  const viewSize = Math.round((size * scale));
  return viewSize;
}

function scaleSizeW(size) { // 计算width和fontsize 建议使用
  const scaleWidth = screenW / width6;
  const viewSize = Math.round((size * scaleWidth));
  return viewSize;
}

function scaleSizeH(size) { // 计算高度建议使用
  const scaleHeight = screenH / height6;
  const viewSize = Math.round((size * scaleHeight));
  return viewSize;
}

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
  setSpText,
  scaleSize,
  scaleSizeH,
  scaleSizeW,
  AUTO_W,
  AUTO_H,
  AUTO_FONT,
};
