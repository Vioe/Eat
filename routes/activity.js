const router = require('koa-router')()
const activityController = require('../controllers/activityController');


router.prefix('/activity')

router.get('/', async(ctx, next) =>{
    await activityController.getActivity(ctx,next)
})
//活动详情
router.get('/activityDetail/:activityId',async (ctx,next) =>{
    await activityController.getActivityDetail(ctx,next);
})
//获取管理员活动列表失败
router.get('/getAdminActivity',async (ctx,next) => {
    await activityController.getAdminActivity(ctx,next);
})
//删除后台文章
router.get('/delAdminActivity/:activityId',async (ctx,next) => {
    await activityController.delAdminActivity(ctx,next);
})
//添加用户报名活动
router.get('/addActivityResult/:userId/:activityId',async (ctx,next) => {
    await activityController.addActivityResult(ctx,next)
})

module.exports = router
