const DAO = require("../model/DAO");

class DB {
    //验证用户名是否存在
    doLogin(username) {
        return DAO("select userId, password, count(1) as sum from userinfo where userName=?" , [username]);
    }
    //获取所有用户信息
    getUserInfo(){
        return DAO("select * from userinfo",[])
    }

    //新增用户



}
module.exports = new DB();
