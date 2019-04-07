const router = require('koa-router')()
const articleController = require('../controllers/articleController');

router.prefix('/article')

router.get('/', async(ctx, next) =>{
    await articleController.getArticle(ctx,next);
})

//根据年月份来查询文章
router.get('/:year/:month',async (ctx,next) =>{
    await articleController.getArticleTime(ctx,next);
})

router.get('/threeArticle',async (ctx,next) =>{
    await articleController.getThreeArticle(ctx,next);
})

//获取后台文章列表
router.get('/getAdminArticle',async (ctx,next) => {
    await articleController.getAdminArticle(ctx,next);
})

//后台管理员添加文章
router.post('/addArticle',async (ctx,next) => {
    await articleController.addArticle(ctx,next);
})

module.exports = router
