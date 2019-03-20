const activitydetailsDAO = require('../model/activitydetailsDAO')

module.exports={
    getActivity: async (ctx,next) => {
        try{
           let json =  await activitydetailsDAO.getActivity();
           ctx.body = {"code": 200,"message":"ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500,"message":"活动获取失败"+e.message,data:[]}
        }
    }
};
