const activitydetailsDAO = require('../model/activitydetailsDAO')

module.exports={
    getActivity: async (ctx,next) => {
        try{
           let json =  await activitydetailsDAO.getActivity();
           ctx.body = {"code": 200,"message":"ok",data:json};
        }catch (e) {
           ctx.body = {"code": 500,"message":"活动获取失败"+e.message,data:[]}
        }
    },
    //用户参与的活动
    joinActivity: async (ctx,next) =>{
        try{
            let userId = ctx.params.userId
            let json = await activitydetailsDAO.joinActivity(userId);
            ctx.body = {"code": 200,"message":"ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500,"message":"获取用户参与活动失败"+e.message,data:[]}
        }
    },
    getActivityDetail: async (ctx,next) =>{
        try{
           let activityId = ctx.params.activityId;
           let json = await activitydetailsDAO.getActivityDetail(activityId);
            ctx.body = {"code": 200,"message":"ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500,"message":"活动详情获取失败"+e.message,data:[]}
        }
    }
};
