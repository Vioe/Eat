const DAO = require("../model/DAO");

class DB {
    // 获取点赞数最多的前八个菜谱
    getSeverRecipe(){
        return DAO("select * from (select * from recipedetails r left join userinfo u on r.userId1 = u.userId ORDER BY recipePraiseNum DESC) form LIMIT 0,8",[]);
    }
    //根据菜谱id获取菜谱详情
    getOneRecipeDetail(recipeId){
        return DAO("select * from (select * from recipedetails r left join userinfo u on r.userId1 = u.userId ORDER BY recipePraiseNum DESC) d where detailsId = ?",[recipeId]);
    }
    getRecipeFood(recipeId){
        return DAO("select * from recipefood where detailsId = ?", [recipeId]);
    }
    getRecipeStep(recipeId){
        return DAO("select * from recipestep where detailsId = ?", [recipeId])
    }
    //热门菜谱前四
    getHotRecipe(){
        return DAO("select * from (select * from recipedetails r left join userinfo u on r.userId1 = u.userId ORDER BY recipePraiseNum DESC) form LIMIT 0,4",[]);
    }
    //删除我的菜谱
    delRecipe(detailsId){
        console.log(detailsId)
        return DAO("call delRecipe(?)",[detailsId]);
    }
    //获取所有菜谱
    getAllRecipe(){
        return DAO("select * from recipedetails",[]);
    }
    //精选作者信息
    getFourUser(){
        return DAO("select * from (select * from recipedetails GROUP BY userId1 ORDER BY count(1) DESC) a left join userinfo u on a.userId1 = u.userId LIMIT 0,4",[])
    }
}

module.exports = new DB();
