const DAO = require("../model/DAO");

class DB {
    //验证用户名是否存在
    doLogin(username) {
        return DAO("select password, count(1) as sum from userinfo where userName=?" , [username]);
    }

    getUserInfo(){
        return DAO("select * from userinfo",[])
    }

}
module.exports = new DB();