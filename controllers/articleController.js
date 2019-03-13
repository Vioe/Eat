const articleDAO = require("../model/articleDAO");

module.exports = {
    getArticle: async(ctx,next) =>{
        try{
            let data=await articleDAO.getArticle();
            ctx.body = {"code": 200, "message": "ok", data: data}
        }catch (e) {
           ctx.body = {"code": 500, "message": "获取文章表失败" + e.message, data: []}
        }
    },

}
