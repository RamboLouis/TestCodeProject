import React from 'react'
import BaseComponent from '../../components/common/baseComponent'

import {
  TouchableOpacity,
  View,
  StyleSheet,
  Text
} from 'react-native'

// import Screen from '../../utils/ScreenUtils'

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5'
  },
  btn: {
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 20,
    marginLeft: 20,
    marginRight: 20,
    height: 50,
    backgroundColor: '#fff'
  }
})

class Home extends BaseComponent {
  static navigationOptions = ({ navigation }) => ({
    title: `首页`
  })

  constructor (props) {
    super(props)
    this.displayName = 'Home'
    console.log('@@@@', props)
  }

  _onClickLifecycleBtnFunc = () => {
    const { navigation } = this.props
    navigation.navigate('Lifecycle')
  }

  render () {
    return (
      <View style={styles.container}>
        <TouchableOpacity style={styles.btn} onPress={this._onClickLifecycleBtnFunc}>
          <Text>组件的生命周期</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.btn} onPress={this._onClickBtnFunc}>
          <Text>FlatList组件</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.btn} onPress={this._onClickBtnFunc}>
          <Text>SectionList组件</Text>
        </TouchableOpacity>
      </View>
    )
  }
}

export default Home
