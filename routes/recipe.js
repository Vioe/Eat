const router = require('koa-router')()
const recipedetailsController = require('../controllers/recipedetailsController');
const commentController = require('../controllers/commentController');

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
//获取菜谱评论
router.get('/comment/:recipeId', async (ctx,next) => {
    await commentController.getRecipeComment(ctx,next)
})
//删除作者评论
router.get('/delComment/:commentId',async (ctx,next) =>{
    await commentController.delComment(ctx,next)
})
//添加评论
router.post('/addComment', async (ctx,next) =>{
    await commentController.addComment(ctx,next)
})
//添加基础菜谱信息
router.post('/addBaseRecipe',async (ctx,next) =>{
    await recipedetailsController.addBaseRecipe(ctx,next)
})
//后台菜谱列表
router.get('/adminRecipeList',async (ctx,next) => {
    await recipedetailsController.adminRecipeList(ctx,next)
})
//后台品论列表
router.get('/commentList',async (ctx,next) => {
    await commentController.commentList(ctx,next)
})



module.exports = router
