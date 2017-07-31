/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react'

import App from './src/containers/app/app'
import {
  AppRegistry
} from 'react-native'

export default class ReactNativeTestProject extends Component {
  render () {
    return (
      <App />
    )
  }
}
AppRegistry.registerComponent('ReactNativeTestProject', () => ReactNativeTestProject)
