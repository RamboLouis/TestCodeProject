import React from 'react'
import BaseComponent from '../../components/common/baseComponent'
import { StackNavigator } from 'react-navigation'

import PageRoute from '../../constants/pageRoute'

const AppNavigator = StackNavigator({
  ...PageRoute
})

class App extends BaseComponent {
  render () {
    return (
      <AppNavigator />
    )
  }
}

export default App
