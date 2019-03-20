const router = require('koa-router')()
const recipedetailsController = require('../controllers/recipedetailsController');

router.prefix('/recipe')

router.get('/', function (ctx, next) {
    ctx.body = 'this is a users response!'
})
//按点赞数获取前七个菜谱
router.get('/homeRecipe', async (ctx, next) =>{
    await recipedetailsController.getSeverRecipe(ctx,next);
})
//获取菜谱详情信息
router.get('/recipeDetail/:detailId',async (ctx,next) =>{
    await recipedetailsController.getRecipeDetail(ctx,next);
})
//热门菜谱
router.get('/hotRecipe',async (ctx,next) =>{
    await recipedetailsController.getHotRecipe(ctx,next)
})



module.exports = router
