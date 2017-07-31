import { Dimensions } from 'react-native'

const screenW = Dimensions.get('window').width
const screenH = Dimensions.get('window').height

const SCREEN_SCALE_W = screenW / 750
const SCREEN_SCALE_H = screenH / 1334

// 自动比例适配宽度
//
// - Parameter width: 宽度
// - Returns: 返回比例适配后的宽度
function AUTO_W (width) {
  return width * SCREEN_SCALE_W
}

// 自动比例适配高度
//
// - Parameter height: 高度
// - Returns: 返回比例适配后的高度
function AUTO_H (height) {
  return height * SCREEN_SCALE_H
}

// 自动比例适配字体大小
//
// - Parameter font: 字体size
// - Returns: 返回比例适配后的大小
function AUTO_FONT (font) {
  return font * SCREEN_SCALE_W
}

export default {
  AUTO_W,
  AUTO_H,
  AUTO_FONT
}
