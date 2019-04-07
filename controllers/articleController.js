const articleDAO = require("../model/articleDAO");
const path = require('path')
const fs = require('fs')
const formidable = require("formidable");

module.exports = {
    //获取所有文章
    getArticle: async(ctx,next) =>{
        try{
            let data=await articleDAO.getArticle();
            let year=await articleDAO.getArticleYear();
            console.log(year.length)
            for(let i=0;i<year.length;i++){
                let monthList = []
                let month=await articleDAO.getArticleMonth(year[i].year);
                for(let j=0;j<month.length;j++){
                    monthList.push(month[j].month)
                    console.log(monthList)
                    year[i].month = monthList;
                }
            }
            let json = {
                allDate: data,
                dateTime: year
            }
            ctx.body = {"code": 200, "message": "ok", data: json}
        }catch (e) {
           ctx.body = {"code": 500, "message": "获取文章表失败" + e.message, data: []}
        }
    },

    //年月份筛选文章
    getArticleTime: async (ctx,next) =>{
        try{
            let year = ctx.params.year;
            let month = ctx.params.month;
            console.log(year,month)
            let json = await articleDAO.getArticleTime(year,month)
            ctx.body = {"code": 200 ,"message": "ok",data: json}
        }catch(e) {
            ctx.body = {"code": 500, "message": "年月获取失败" + e.message, data: []}
        }
    },

    //点赞数最多的前三个文章
    getThreeArticle: async (ctx,next) => {
        try{
           let json = await articleDAO.getThreeArticle();
           ctx.body = {"code": 200,"message": "ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500, "message": "获取前三篇文章失败" + e.message, data: []}
        }
    },

    //根据文章id获取文章详情
    getArticleDetail: async (ctx,next) => {
        try{
            console.log(111)
            let articleId = ctx.params.articleId;
            console.log(articleId)
            let json = await articleDAO.getArticleDetail(articleId);
            ctx.body = {"code": 200,"message": "ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500, "message": "获取一篇文章失败" + e.message, data: []}
        }
    },

    //文章数点赞
    addPraiseNum: async (ctx,next) => {
        try{
           let articleId = ctx.params.articleId;
           console.log(articleId)
           let json = await articleDAO.addPraiseNum(articleId)
           ctx.body = {"code": 200,"message": "ok",data:json}
        }catch (e) {
           ctx.body = {"code": 500, "message": "点赞失败" + e.message, data: []}
        }
    },

    //获取后台文章列表
    getAdminArticle: async (ctx,next) => {
        try{
            let json = await articleDAO.getAdminArticle();
            ctx.body = {"code": 200,"message": "ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500, "message": "获取后台文章列表失败" + e.message, data: []}
        }
    },

    //管理员后台删除文章
    delAdminArticle: async (ctx,next) => {
        try{
            let articleId = ctx.params.articleId;
            console.log(1111111)
            console.log(articleId)
            await articleDAO.delAdminArticle(articleId);
            ctx.body = {"code": 200,"message": "删除后台文章成功",data:[]}
        }catch (e) {
            ctx.body = {"code": 500, "message": "删除后台文章失败" + e.message, data: []}
        }
    },

    //后台管理员文章添加
    addArticle: async (ctx,next) => {
        try{
            var form = new formidable.IncomingForm();
            form.uploadDir = '../public/articleImg'    //设置文件存放路径
            form.multiples = true;  //设置上传多文件
            form.keepExtensions = true;
            console.log(222)
            form.keepExtensions = true;
            form.parse(ctx.req,async function (err, fields, files) {
                console.log(files.filename.path)
                let myDate = JSON.parse(fields.myDate)
                let articleImg = 'http://localhost:3000/articleImg/'+files.filename.path.slice(files.filename.path.lastIndexOf('\\')+1)
                await articleDAO.addArticle(myDate,articleImg)
            })
            ctx.body = {"code":200, "message": "后台添加文章成功",data: []}
        }catch (e) {
            ctx.body = {"code":500, "message": "后台添加文章失败",data: []}
        }
    }

}
