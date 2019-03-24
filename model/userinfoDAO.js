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
    addUser(data){
        return DAO("insert into userinfo(userName, sex, phoneNo, password, levelId, expValue, headPhoto, userTime) VALUES(?,?,?,?,?,?,?,?)",[data.form.name,data.form.radio,data.form.inputTel,data.form.password,1,0,"hhh",new Date()])
    }
    //更新用户信息
    updateUserInfo(data){
        console.log(data)
        return DAO('update userInfo set userName = ?,headPhoto = ?,password = ? where userId = ?',[data.userName,data.picName,data.password,data.userId]);
    }
    //根据用户id查
    getUser(userId){
        return DAO('select * from userinfo where userId = ?',[userId]);
    }
    //我的菜谱
    getMyRecipe(userId){
        return DAO('select * from recipedetails where userId1 = ?',userId);
    }


}
module.exports = new DB();
