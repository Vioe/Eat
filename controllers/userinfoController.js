const userinfoDAO = require("../model/userinfoDAO");
const path = require('path')
const fs = require('fs')
const formidable = require("formidable");

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
    //获取所有用户信息
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
            ctx.body = {"code": 500, "message": "添加用户失败" + e.message, data: []}
        }
    },
    //更新用户头像信息
    updateUserInfo: async (ctx,next) => {
        try{
            var form = new formidable.IncomingForm();
            form.uploadDir = '../public/headImg'    //设置文件存放路径
            form.multiples = true;  //设置上传多文件
            form.keepExtensions = true;
            form.parse(ctx.req,async function (err, fields, files) {
                // console.log(files.files.path)
                // console.log(ctx.req)
                console.log(files)
                let oldpath=files.files.path;
                // console.log("111"+oldpath)
                let newpath = '../public/headImg/'+fields.fileName;
                fs.rename(oldpath, newpath,function(err){
                    if(err){
                        throw Error("改名失败"+err);
                    }
                    console.log("改名成功")

                });
                //根据files.filename.name获取上传文件名，执行后续写入数据库的操作
                    let mydata = JSON.parse(fields.mydata);
                    let data = {
                        userName: mydata.formLabelAlign.name,
                        password: mydata.formLabelAlign.password1,
                        // picName: fields.fileName,
                        picName: 'http://localhost:3000/headImg/'+fields.fileName,
                        userId: mydata.userId
                    }
                    let json =await userinfoDAO.updateUserInfo(data);
                // ctx.body="上传成功";
                // ctx.body = {"code":200, "message": "ok",data: json}
                //根据fileds.mydata获取上传表单元素的数据，执行写入数据库的操作
                if(err){
                    ctx.body="上传失败";
                }
            })
            ctx.body = {"code":200, "message": "上传成功",data: []}
            // ctx.body="上传成功";
        }catch (e) {
            ctx.body = {"code": 500, "message": "更新用户信息失败" + e.message, data: []}
        }

    },
    //根据用户id获取用户信息
    getUser: async (ctx, next) =>{
        try{
            let userId = ctx.params.userId;
            let json = await userinfoDAO.getUser(userId)
            ctx.body = ctx.body = {"code": 200, "message": "ok", data: json}
        }catch (e) {
            ctx.body = ctx.body = {"code": 500, "message": "获取用户信息失败"+e.message, data: json}
        }
    },
    //我的菜谱
    getMyRecipe: async (ctx,next) => {
        try{
            let userId = ctx.params.userId;
            let json = await userinfoDAO.getMyRecipe(userId);
            ctx.body = {"code": 200, "message":"ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500, "message": "获取我的菜谱失败"+e.message, data: []}
        }
    }
};
