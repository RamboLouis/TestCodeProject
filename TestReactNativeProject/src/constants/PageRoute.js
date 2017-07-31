
import UserCenter from '../containers/user/UserCenter'
import UserInfo from '../containers/user/UserInfo'

import UserSetting from '../containers/user/UserSetting'

const routes = {
  UserCenter: {
    screen: UserCenter
    // navigationOptions: () => ({
    //   title: '个人中心',
    // }),
  },
  UserInfo: {
    screen: UserInfo
  },
  UserSetting: {
    screen: UserSetting
  }
}

export default routes
