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
    backgroundColor: '#f5f5f5'
  }
})

class Lifecycle extends BaseComponent {
  constructor (props) {
    super(props)
    this.displayName = 'Lifecycle'
    console.log('constructor')
  }

  componentWillMount () {
    console.log('componentWillMount')
  }

  componentDidMount () {
    console.log('componentDidMount')
  }

  componentWillReceiveProps (nextProps) {
    console.log('componentWillReceiveProps')
  }

  // 在接收到新的道具或状态时，将在渲染之前调用shouldComponentUpdate（）。默认为true。对于初始渲染，或者当使用forceUpdate（）时，不调用此方法。
  shouldComponentUpdate () {
    console.log('shouldComponentUpdate')
  }

  // 如果shouldComponentUpdate（）返回false，则不会调用componentWillUpdate（）。
  componentWillUpdate () {
    console.log('componentWillUpdate')
  }

  // 如果shouldComponentUpdate（）返回false，则不会调用componentDidUpdate（）。
  componentDidUpdate () {
    console.log('componentDidUpdate')
  }

  componentWillUnmount () {
    console.log('componentWillUnmount')
  }

  render () {
    console.log('render')
    return (
      <View style={styles.container}>
        <Text>测试</Text>
      </View>
    )
  }
}

export default Lifecycle
