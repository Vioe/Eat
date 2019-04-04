const attentionDAO = require('../model/attentionDAO')

module.exports={
    //我关注的用户
    getAttentionUser: async (ctx,next)=>{
        try {
            let userId = ctx.params.userId;
            let json = await attentionDAO.getAttentionUser(userId)
            ctx.body = {"code":200,"message":"ok",data: json}
        }catch (e) {
            ctx.body = {"code":500,"message":"我关注的用户失败"+e.message,data: []}
        }
    },
    //删除我关注的用户
    delAttentionUser: async (ctx,next)=>{
        try{
            let userId = ctx.params.userId;
            let fansId = ctx.params.fansId;
            let json = await attentionDAO.delAttentionUser(userId, fansId);
            ctx.body = {"code":200,"message":"ok",data: json}
        }catch (e) {
            ctx.body = {"code":500,"message":"删除用户失败"+e.message,data: []}
        }
    },
    //增加一条关注用户
    addAttentionUser: async (ctx,next) => {
        try{
            let userId = ctx.params.userId;
            let fansId = ctx.params.fansId;
            await attentionDAO.addAttentionUser(userId,fansId)
            ctx.body = {"code":200,"message":"添加关注用户成功",data: []}
        }catch (e) {
            ctx.body = {"code":500,"message":"添加关注用户失败"+e.message,data: []}
        }
    },
    //是否有关注该用户
    isAttUser: async (ctx,next) => {
        try{
            let userId = ctx.params.userId;
            let fansId = ctx.params.fansId;
            console.log(userId,fansId)
            let json = await attentionDAO.isAttentionUser(userId,fansId);
            ctx.body = {"code":200,"message":"ok",data: json}
        }catch (e) {
            ctx.body = {"code":500,"message":"查看关注用户失败"+e.message,data: []}
        }
    }

}
