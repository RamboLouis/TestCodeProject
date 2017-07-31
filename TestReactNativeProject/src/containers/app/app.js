import React from 'react'
import BaseComponent from '../../components/common/baseComponent'
import { StackNavigator, addNavigationHelpers } from 'react-navigation'

import PageRoute from '../../constants/PageRoute'

const AppNavigator = StackNavigator(
  {
  // UserCenter: {
  //   screen: UserCenter,
  // UserInfo: {
  //   screen: UserInfo,
  // },
    ...PageRoute
  },
  {
    // headerMode: 'screen',
    // mode: 'modal',
  }
)

class App extends BaseComponent {
  render () {
    return (
      <AppNavigator />
    )
  }
}

export default App
