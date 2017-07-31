import React from 'react';
import BaseComponent from '../../components/common/baseComponent';

import {
  View,
  StyleSheet,
  Text,
  Image,
  ScrollView,
  TouchableOpacity,
  FlatList,
  // TouchableHighlight,
} from 'react-native';

import {
  WINDOW_WIDTH,
} from '../../constants/varibles';

import ScreenUtils from '../../utils/ScreenUtils'
import UserCenterItem from '../../components/user/userCenterItem'

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF'
  },
  userScrollView: {
    position: 'absolute',
    top: 0,
  },
  userTopView:{
    flexDirection: 'row',
    backgroundColor: '#ff482c',
    width: WINDOW_WIDTH,
    height: ScreenUtils.AUTO_H(200),
  },
  userTopViewImage:{
    width: ScreenUtils.AUTO_W(100),
    height: ScreenUtils.AUTO_H(100),
    marginLeft: ScreenUtils.AUTO_W(100),
    marginTop: ScreenUtils.AUTO_H(80),
    backgroundColor: '#0000ff',
  },
  // 个人中心--用户文本基类视图
  userTopViewTextView:{
    marginTop: ScreenUtils.AUTO_H(80),
    marginLeft: ScreenUtils.AUTO_W(40),
    flexDirection: 'column',
    // backgroundColor: '#00ff00',
  },
  // 个人中心--用户name
  userTopViewTextName: {
    backgroundColor: '#2b2b2b',
    fontSize: ScreenUtils.AUTO_FONT(34),
  },
  // 个人中心--用户phone
  userTopViewTextPhone: {
    marginTop: ScreenUtils.AUTO_H(10),
    backgroundColor: '#2b2b2b',
    fontSize: ScreenUtils.AUTO_FONT(30),
  },
  userPurseView:{
    backgroundColor: 'white',
  },
  backView: {
    backgroundColor: '#ff0000',
    width: ScreenUtils.AUTO_W(400),
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

class UserCenter extends BaseComponent {
  static navigationOptions = () => {
    return ({
      title: '个人中心',
      // header: null,
    })
  }
  constructor(props) {
    super(props);
    // this.onClickIcon = this.onClickIcon.bind(this);
  }

  // 点击icon
  onClickIcon = () => {
    // const { navigate } = this.props.navigation;

    // 带参数
    this.props.navigation.navigate('UserInfo',{ infoTitle: '个人信息' });
    console.log("点击icon");
  }

  // 点击名字
  onClickName = () => {

    // 不带参数
    this.props.navigation.navigate('UserSetting');
    console.log('点击名字');
  }

  onRenderItem = (item) => {

  }

  render() {
    let mobile = 13311113333;
    return (
      <View style={styles.container}>
        <ScrollView style={styles.userScrollView} scrollsToTop={true}>
          <View style={styles.userTopView}>
            <TouchableOpacity onPress={this.onClickIcon}>
              <Image style={styles.userTopViewImage}/>
            </TouchableOpacity>
              <View style={styles.userTopViewTextView}>
                <TouchableOpacity onPress={this.onClickName}>
                  <Text style={styles.userTopViewTextName}>
                    鲜易用户
                  </Text>
                </TouchableOpacity>
                <Text style={styles.userTopViewTextPhone}>
                  {mobile}
                </Text>
              </View>
          </View>
          <View style={styles.userPurseView}>
            <Text>
              ceshi
            </Text>
            <UserCenterItem />
          </View>
          <FlatList
            data={['a','b','a','a','a','a','a']}
            renderItem={({item}) => <Text>{item}</Text>}
          />
        </ScrollView>
      </View>
    );
  }
}

export default UserCenter;
