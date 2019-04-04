const router = require('koa-router')()
const activityController = require('../controllers/activityController');


router.prefix('/activity')

router.get('/', async(ctx, next) =>{
    await activityController.getActivity(ctx,next)
})
//活动详情
router.get('/activityDetail/:activityId',async (ctx,next) =>{
    await activityController.getActivityDetail(ctx,next)
})

module.exports = router
