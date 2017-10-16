import Home from '../containers/home/home'
import Lifecycle from '../containers/home/lifecycle'
import User from '../containers/user/user'

const routes = {
  Home: {
    screen: Home
    // navigationOptions: () => ({
    //   title: '个人中心',
    // }),
  },
  Lifecycle: {
    screen: Lifecycle
  },
  User: {
    screen: User
  }
  // UserInfo: {
  //   screen: UserInfo
  // },
  // UserSetting: {
  //   screen: UserSetting
  // }
}

export default routes
