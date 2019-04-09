const commentDAO = require('../model/commentDAO')


module.exports={
    //获取菜谱评论
    getRecipeComment: async (ctx,next) =>{
        try{
            let recipeId = ctx.params.recipeId;
            let json = await commentDAO.getRecipeComment(recipeId);
            ctx.body = {"code": 200,"message": "ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500,"message": "获取评论失败",data:[]};
        }
    },
    //删除评论
    delComment: async (ctx,next) => {
        try{
            let commentId = ctx.params.commentId;
            await commentDAO.delComment(commentId);
            ctx.body = {"code": 200,"message": "删除成功",data:[]};
        }catch (e) {
            ctx.body = {"code": 500,"message": "删除失败",data:[]};
        }
    },
    //添加评论
    addComment: async (ctx,next) => {
        try{
            console.log(ctx.request.body)
            let param = ctx.request.body;
            await commentDAO.addComment(param)
            ctx.body = {"code": 200,"message": "ok",data:[]};
        }catch (e) {
            ctx.body = {"code": 500,"message": "添加评论失败",data:[]};
        }
    },
    //后台评论列表
    commentList: async (ctx,next) => {
        try{
            let json = await commentDAO.commentList()
            ctx.body = {"code": 200,"message": "ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500,"message": "获取评论列表失败",data:[]};
        }
    }
}
