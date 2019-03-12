const userinfoDAO = require("../model/userinfoDAO");
module.exports = {
    //登录验证
    doLogin:async(ctx,next) =>{
        try{
            let username=ctx.request.body.username;
            let userpassword=ctx.request.body.userpassword;
            let info = await userinfoDAO.doLogin(username);
            console.log(info)
            console.log(info[0].sum)
            console.log(info[0].password)
            let data;
            if(info[0].sum == 0){
                data = {
                    num:1,
                };
            }else{
                if(info[0].password != userpassword){
                    data = {
                        num: 2
                    };
                }else{
                    data = {
                        num: 3,
                        userId: info[0].userId
                    };
                }
            }
            ctx.body = {"code": 200, "message": "ok", data: data}
        }catch (e) {
            ctx.body = {"code": 500, "message": "服务器错误" + e.message, data: []}
        }
    },
    getUserInfo:async(ctx,next) =>{
        try{
            console.log(ctx.request.body)
            let data=await userinfoDAO.getUserInfo();
            ctx.body = {"code": 200, "message": "ok", data: data}
        }catch (e) {
            ctx.body = {"code": 500, "message": "获取用户表失败" + e.message, data: []}
        }
    },
    //新增用户
    addUser:async (ctx,next) =>{
        try{
            console.log(ctx.request.body)
            let data = ctx.request.body;
            if(data.form.radio == 1){
                data.form.radio = '男'
            }else{
                data.form.radio = '女'
            }
            let info = await userinfoDAO.addUser(data);
            ctx.body = {"code": 200, "message": "ok", data: info}
        }catch (e) {

        }
    }

};
