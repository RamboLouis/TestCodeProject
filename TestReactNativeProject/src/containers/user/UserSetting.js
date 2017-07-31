import React from 'react';
import BaseComponent from '../../components/common/baseComponent';

import {
  View,
  StyleSheet,
  Text,
  Image,
  ScrollView,
  TouchableOpacity,
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
  backView: {
    backgroundColor: '#ff0000',
    // width: screenUtils.AUTO_W(400),
    width: WINDOW_WIDTH,
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

class UserSetting extends BaseComponent {
  static navigationOptions = {
    title: '个人设置',
    headerTintColor: '#2b2b2b',
  }

  constructor(props) {
    super(props);
  }
  
  render() {
    return (
      <View style={styles.container}>
        <ScrollView>
          <View style={styles.backView}>
            <Text style={styles.welcome}>
              测试,测试,测试
            </Text>
            <Text style={styles.instructions}>
              测试,测试,测试,测试,认识,不是
            </Text>
          </View>
        </ScrollView>
      </View>
    );
  }
}

export default UserSetting;
