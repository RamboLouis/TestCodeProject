import React from 'react';
import BaseComponent from '../../components/common/baseComponent';

import {
  View,
  StyleSheet,
  Text,
  Image,
  ScrollView,
  TouchableOpacity,
  // TouchableHighlight,
} from 'react-native';

import {
  WINDOW_WIDTH,
} from '../../constants/varibles';

import screenUtils from '../../utils/screenUtils'

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  // 个人中心--顶部基类视图
  userTopView:{
    // flex: 1,
    // flexDirection: 'column',
    flexDirection: 'row',
    backgroundColor: '#ff482c',
    width: WINDOW_WIDTH,
    height: screenUtils.AUTO_H(240),
  },
  // 个人中心--用户icon
  userTopViewImage:{
    width: screenUtils.AUTO_W(100),
    height: screenUtils.AUTO_H(100),
    marginLeft: screenUtils.AUTO_W(100),
    marginTop: screenUtils.AUTO_H(120),
    backgroundColor: '#0000ff',
  },
  // 个人中心--用户文本基类视图
  userTopViewTextView:{
    marginTop: screenUtils.AUTO_H(120),
    marginLeft: screenUtils.AUTO_W(40),
    flexDirection: 'column',
    // backgroundColor: '#00ff00',
  },
  // 个人中心--用户name
  userTopViewTextName: {
    backgroundColor: '#2b2b2b',
    fontSize: screenUtils.AUTO_FONT(34),
  },
  // 个人中心--用户phone
  userTopViewTextPhone: {
    marginTop: screenUtils.AUTO_H(10),
    backgroundColor: '#2b2b2b',
    fontSize: screenUtils.AUTO_FONT(30),
  },
  backView: {
    backgroundColor: '#ff0000',
    width: screenUtils.AUTO_W(400),
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

class App extends BaseComponent {
  constructor(props) {
    super(props);

  }
  render() {
    let mobile = 13311113333;
    return (
      <View style={styles.container}>
        <ScrollView>
          <View style={styles.userTopView}>
            <TouchableOpacity>
              <Image style={styles.userTopViewImage}/>
            </TouchableOpacity>
              <View style={styles.userTopViewTextView}>
                <Text style={styles.userTopViewTextName}>
                  鲜易用户
                </Text>
                <Text style={styles.userTopViewTextPhone}>
                  {mobile}
                </Text>
              </View>
          </View>
          <View style={styles.backView}>
            <Text style={styles.welcome}>
              Welcome to React Native!
            </Text>
            <Text style={styles.instructions}>
              测试,测试,测试,测试,认识
            </Text>
          </View>
        </ScrollView>
      </View>
    );
  }
}

export default App;
