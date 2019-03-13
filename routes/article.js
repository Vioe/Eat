const router = require('koa-router')()
const articleController = require('../controllers/articleController');

router.prefix('/article')

router.get('/', async(ctx, next) =>{
    await articleController.getArticle(ctx,next);
})


module.exports = router
