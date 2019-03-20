const recipedetailsDAO = require('../model/recipedetailsDAO')

module.exports={
    // 获取点赞数最多的前八个菜谱
    getSeverRecipe: async (ctx,next) => {
        try{
           let json = await recipedetailsDAO.getSeverRecipe();
           ctx.body = {"code": 200,"message": "ok",data: json};
        }catch (e) {
            ctx.body = {"code": 500,"message": "获取前八个菜谱失败"+e.message,data: []};
        }
    },
    //菜谱详情
    getRecipeDetail: async (ctx,next) =>{
        try{
            console.log(ctx.params.detailId)
            let detailId = ctx.params.detailId;
            let recipe = await recipedetailsDAO.getOneRecipeDetail(detailId);
            let recipeFood = await recipedetailsDAO.getRecipeFood(detailId);
            let recipeStep = await recipedetailsDAO.getRecipeStep(detailId);
            let json = {
                recipe:recipe,
                recipeFood:recipeFood,
                recipeStep:recipeStep
            }
            ctx.body = {"code": 200,"message":"ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500,"message":"菜谱详情失败"+e.message,data:[]}
        }
    },
    //热门菜谱前四
    getHotRecipe: async (ctx,next) => {
        try{
           let json = await recipedetailsDAO.getHotRecipe();
            ctx.body = {"code": 200,"message":"ok",data:json}
        }catch (e) {
            ctx.body = {"code": 500,"message":"热门菜谱获取失败"+e.message,data:[]}
        }
    }
};
