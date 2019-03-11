const router = require('koa-router')()
const userinfoController = require('../controllers/userinfoController');

router.prefix('/users')

router.get('/', async(ctx, next)=>{
    await userinfoController.getUserInfo(ctx,next);
})

router.post('/add', async(ctx, next)=>{
    await userinfoController.addUser(ctx,next);
})



module.exports = router
