const router = require('koa-router')()
const activityController = require('../controllers/activityController');


router.prefix('/activity')

router.get('/', async(ctx, next) =>{
    await activityController.getActivity(ctx,next)
})

module.exports = router
