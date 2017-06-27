/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import { Provider } from 'react-redux';
import App from './src/containers/app/app';

import {
  AppRegistry,
} from 'react-native';

export default class TestRNProject extends Component {
  render() {
    return (
      <Provider store={this.store}>
        <App />
      </Provider>
    );
  }
}


AppRegistry.registerComponent('TestRNProject', () => TestRNProject);
