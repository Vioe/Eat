const router = require('koa-router')()
const path = require('path')
const fs = require('fs')
const formidable = require("formidable");
const userinfoController = require('../controllers/userinfoController');

router.post("/login",async(ctx,next)=>{
    await userinfoController.doLogin(ctx,next);
});

//上传文件的路由
router.post('/uploadfile',async function (ctx, next) {
    var form = new formidable.IncomingForm();
    form.uploadDir = '../public/recipeImg'    //设置文件存放路径
    form.multiples = true;  //设置上传多文件
    form.keepExtensions = true;
    form.parse(ctx.req, function (err, fields, files) {
        console.log(files.files.path)
        // console.log(fields)
        let oldpath=files.files.path;
        console.log("111"+oldpath)
        let newpath = '../public/recipeImg/'+fields.fileName;
        fs.rename(oldpath, newpath,function(err){
            console.log(222)
            console.log(oldpath)
            console.log(newpath)
            if(err){
                throw Error("改名失败"+err);
            }
            console.log("改名成功")
        });
        //根据files.filename.name获取上传文件名，执行后续写入数据库的操作
        //根据fileds.mydata获取上传表单元素的数据，执行写入数据库的操作
        if(err){
            ctx.body="上传失败";
        }
    })
    ctx.body="上传成功";
});

//更新用户头像信息
router.post('/updateInfo', async (ctx,next) =>{
   await userinfoController.updateUserInfo(ctx,next)
})



module.exports = router;
