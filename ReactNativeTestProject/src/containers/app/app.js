import React from 'react'
import BaseComponent from '../../components/common/baseComponent'
import { StackNavigator, addNavigationHelpers } from 'react-navigation'

import Home from '../../containers/home/home'

const AppNavigator = StackNavigator({
  Home: {
    screen: Home
  }
  //   UserCenter: {
  //     screen: UserCenter
  // },
  // UserInfo: {
  //   screen: UserInfo,
  // },
    // ...PageRoute
})

class App extends BaseComponent {
  render () {
    return (
      <AppNavigator />
    )
  }
}

export default App
