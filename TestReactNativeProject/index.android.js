import React, { Component } from 'react';
import { Provider } from 'react-redux';
import App from './src/containers/app/app';

import {
  AppRegistry,
} from 'react-native';


export default class TestReactNativeProject extends Component {
  render() {
    return (
      // <Provider store={this.store}>
        <App />
      // </Provider>
    );
  }
}

AppRegistry.registerComponent('TestReactNativeProject', () => TestReactNativeProject);
