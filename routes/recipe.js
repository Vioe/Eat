const router = require('koa-router')()
const recipedetailsController = require('../controllers/recipedetailsController');

router.prefix('/recipe')

router.get('/', async (ctx, next) =>{
    await recipedetailsController.getAllRecipe(ctx,next);
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
//添加菜谱
router.post('/addRecipe', async (ctx,next) => {
    await recipedetailsController.addRecipe(ctx,next)
})
//删除我的菜谱
router.get('/delRecipe/:userId/:detailsId',async (ctx,next) => {
    await recipedetailsController.delRecipe(ctx,next)
})
//精选菜谱
router.get('/getFourUser', async (ctx,next) =>{
    await recipedetailsController.getFourUser(ctx,next)
})



module.exports = router
