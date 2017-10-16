import React from 'react'
import BaseComponent from '../../components/common/baseComponent'

import {
  View,
  StyleSheet,
  Text
} from 'react-native'

// import Screen from '../utils/screen'

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF'
  }
})

class User extends BaseComponent {
  constructor (props) {
    super(props)
    this.displayName = 'User'
  }

  render () {
    return (
      <View style={styles.container}>
        <Text>测试</Text>
      </View>
    )
  }
}

export default User
