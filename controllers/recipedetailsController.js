const recipedetailsDAO = require('../model/recipedetailsDAO')
const path = require('path')
const fs = require('fs')
const formidable = require("formidable");

module.exports={
    // 获取点赞数最多的前八个菜谱
    getSeverRecipe: async (ctx,next) => {
        try{
           let json = await recipedetailsDAO.getSeverRecipe();
           ctx.body = {"code": 200,"message": "ok",data: json};
        }catch (e) {
            ctx.body = {"code": 500,"message": "获取前八个菜谱失败"+e.message,data: []};
        }
    },
    //菜谱详情
    getRecipeDetail: async (ctx,next) =>{
        try{
            console.log(ctx.params.detailId)
            let detailId = ctx.params.detailId;
            let recipe = await recipedetailsDAO.getOneRecipeDetail(detailId);
            let recipeFood = await recipedetailsDAO.getRecipeFood(detailId);
            let recipeStep = await recipedetailsDAO.getRecipeStep(detailId);
            let json = {
                recipe:recipe,
                recipeFood:recipeFood,
                recipeStep:recipeStep
            }
            ctx.body = {"code": 200,"message":"ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500,"message":"菜谱详情失败"+e.message,data:[]}
        }
    },
    //热门菜谱前四
    getHotRecipe: async (ctx,next) => {
        try{
           let json = await recipedetailsDAO.getHotRecipe();
            ctx.body = {"code": 200,"message":"ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500,"message":"热门菜谱获取失败"+e.message,data:[]}
        }
    },
    //删除菜谱
    delRecipe: async (ctx,next) => {
        // console.log(ctx.params.userId)
        try{
            let userId = ctx.params.userId;
            let detailsId = ctx.params.detailsId;
            let json = await recipedetailsDAO.delRecipe(detailsId);
            ctx.body = {"code":200, "message": "删除菜谱成功",data: json}
        }catch (e) {
            ctx.body = {"code":500, "message": "删除失败"+e.message,data: []}
        }
    },
    //获取所有菜谱
    getAllRecipe: async (ctx,next) => {
        try{
            let json = await recipedetailsDAO.getAllRecipe();
            ctx.body = {"code":200, "message": "ok",data: json};
        }catch (e) {
            ctx.body = {"code":500, "message": "获取所有菜谱失败"+e.message,data: []};
        }
    },
    //获取发布菜谱最多的前四位用户
    getFourUser: async (ctx,next) => {
        try {
            let json = await recipedetailsDAO.getFourUser()
            ctx.body = {"code": 200, "message": "ok", data: json}
        } catch (e) {
            ctx.body = {"code": 500, "message": "获取精选作者失败" + e.message, data: []}
        }

    },
    //添加菜谱
    addRecipe: async (ctx,next) => {
        try{
            let detialsId = await recipedetailsDAO.getAddRecipeId();
            var form = new formidable.IncomingForm();
            form.uploadDir = '../public/recipeImg'    //设置文件存放路径
            form.multiples = true;  //设置上传多文件
            form.keepExtensions = true;
            form.keepExtensions = true;
            form.parse(ctx.req,async function (err, fields, files) {
                console.log(files)
                console.log(fields)
                console.log('---------------------')
                console.log(files.filename.length)
                let stepPicUrl = []
                let myDate = JSON.parse(fields.myDate)
                let myDate1 = JSON.parse(fields.myDate1)
                for(let i=0; i<files.filename.length;i++){
                    stepPicUrl.push('http://localhost:3000/recipeImg/'+files.filename[0].path.slice(files.filename[0].path.lastIndexOf('\\')+1))
                }
                for(let i=0; i<myDate.length;i++){
                    await recipedetailsDAO.insertStepPic(i+1,myDate[i],stepPicUrl[i],detialsId[0].detailsId);
                }
                for(let j=0;j<myDate1.length;j++){
                    await recipedetailsDAO.insertRecipeFood(myDate1[j].Name,myDate1[j].Num,detialsId[0].detailsId)
                }
                // let oldpath=files.filename;
                console.log(stepPicUrl)
                console.log("第一张")
                // console.log(files.filename[0].path)
                console.log("第二张")
                // console.log(files.filename[1].path)
                // console.log("111"+oldpath)
                // let newpath = '../public/recipeImg/'+fields.fileName;
                // fs.rename(oldpath, newpath,function(err){
                //     if(err){
                //         throw Error("改名失败");
                //     }
                //     console.log("改名成功")
                // });
                if(err){
                    ctx.body="上传失败";
                }
            })
            ctx.body = {"code":200, "message": "上传成功",data: []}
        }catch (e) {
            ctx.body = {"code":500, "message": "上传失败",data: []}
        }
    },
    //先添加基础图片 1、菜谱名 2、背景大图 3、简介 4、烹饪时间 5、分量
    addBaseRecipe: async (ctx,next) => {
        try{
            var form = new formidable.IncomingForm();
            form.uploadDir = '../public/baseImg'    //设置文件存放路径
            form.multiples = true;  //设置上传多文件
            form.keepExtensions = true;
            form.parse(ctx.req,async function (err, fields, files) {
                console.log(fields)
                console.log(files)
                let baseImg = 'http://localhost:3000/baseImg/'+files.filename.path.slice(files.filename.path.lastIndexOf('\\')+1);
                let data = {
                    dieltTitle: fields.dieltTitle,
                    dieltSyon: fields.dieltSyon,
                    dieltTime: fields.dieltTime,
                    dieltWeight: fields.dieltWeight,
                    userId: fields.userId,
                    baseImg: baseImg
                }
                await recipedetailsDAO.addBaseRecipe(data)
            })
            ctx.body = {"code":200, "message": "上传成功",data: []}
        }catch (e) {
            ctx.body = {"code":500, "message": "插入基础菜谱失败",data: []}
        }
    },
    //后台菜谱列表
    adminRecipeList: async (ctx,next) => {
        try{
            let json = await recipedetailsDAO.adminRecipeList();
            ctx.body = {"code":200, "message": "后台菜谱列表",data: json}
        }catch (e) {
            ctx.body = {"code":500, "message": "获取后台菜谱列表失败",data: []}
        }
    }
};
