import React from 'react'
import BaseComponent from '../../components/common/baseComponent'

import {
  View,
  StyleSheet,
  Text
  // Image,
  // TouchableOpacity
} from 'react-native'

import {
  WINDOW_WIDTH
} from '../../constants/varibles'

import screenUtils from '../../utils/screenUtils'

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF'
  },
  backView: {
    backgroundColor: '#ff0000',
    width: WINDOW_WIDTH
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5
  }
})

class UserCenterItem extends BaseComponent {
  constructor(props) {
    super(props)
  }

  render () {
    return (
      <View style={styles.container}>
        <View style={styles.backView}>
          <Text style={styles.instructions}>
            测试,测试,测试,测试,认识,不是
          </Text>
        </View>
      </View>
    )
  }
}

export default UserCenterItem
