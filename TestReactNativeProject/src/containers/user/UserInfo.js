import React from 'react';
import BaseComponent from '../../components/common/baseComponent';

import {
  View,
  StyleSheet,
  Text,
  Image,
  ScrollView,
  TouchableOpacity,
  Button
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

class UserInfo extends BaseComponent {

  // 传递参数
  // static navigationOptions = ({ navigation }) => ({
  //     const {state} = navigation;
  //     title: `${navigation.state.params.infoTitle}`,
  //     headerRight: <Button title="Info" />
  //   });
  static navigationOptions = ({ navigation }) => {
    const {state, setParams} = navigation;
      // const isInfo = state.params.mode === 'info';
    const {infoTitle} = state.params;
    const headerStyle = { backgroundColor:'#4ECBFC' };
    return {
      title: `${infoTitle}`,
      headerRight: (
        <Button color='#2b2b2b' title={'Done'} />
      ),
      //header: null,                  // 设置导航栏时候隐藏
      headerTitle: `${infoTitle}`,   // 控制器的导航标题. 默认采用title的
      headerBackTitle: '',        // iOS设置后退按钮使用的标题. 默认:是上一个控制器的标题
      headerTintColor: '#2b2b2b',    // 设置标题颜色.
      gesturesEnabled: true,         // iOS是否可以使用手势关闭此屏幕,Android无效. 默认:true
      headerStyle,
    };
  };

  constructor(props) {
    super(props);

  }

  onClickBtn = () => {
    console.log('!!!!!!!!!!!!');
    this.props.navigation.navigate('UserSetting');
  }

  render() {
    // const { params } = this.props.navigation.state;
    return (
      <View style={styles.container}>
        <ScrollView>
          <View style={styles.backView}>
            <TouchableOpacity onPress={this.onClickBtn}>
            <Text style={styles.welcome}>
              {this.props.navigation.state.params.infoTitle}
            </Text>
            </TouchableOpacity>
            <Text style={styles.instructions}>
              测试,测试,测试,测试,认识,不是,bushi
            </Text>
          </View>
        </ScrollView>
      </View>
    );
  }
}

export default UserInfo;
