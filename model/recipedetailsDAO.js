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
    //添加基础信息1、菜谱名 2、背景图 3、简介 4、烹饪时间 5、分量
    addBaseRecipe(data){
        return DAO('insert into recipedetails(recipeName,recipeBrief,recipeCoverImg,userId1,recipePraiseNum,videoContent,recipeClassifyId,recipeMakeTime,recipeWeight) VALUES(?,?,?,?,?,?,?,?,?)',[data.dieltTitle,data.dieltSyon,data.baseImg,data.userId,0,null,7,data.dieltTime,data.dieltWeight])
    }
    //获取刚添加的菜谱ID,方便插入菜谱食材
    getAddRecipeId(){
        return DAO('select detailsId from recipedetails ORDER BY detailsId Desc LIMIT 0,1',[]);
    }
    //插入步骤图、步骤简介
    insertStepPic(i,ctn,pic,detailsId){
        return DAO("insert into recipestep(stepId,recipeStepBrief,recipeStepImg,detailsId) VALUES(?,?,?,?)",[i,ctn,pic,detailsId]);
    }
    //插入菜谱所需要的食材、份量
    insertRecipeFood(foodName,foodNum,detailsId){
        return DAO('insert into recipefood(foodName,foodNum,detailsId) VALUES(?,?,?)',[foodName,foodNum,detailsId]);
    }
    //后台菜谱列表
    adminRecipeList(){
        return DAO('select detailsId,recipeName,userId1,recipeClassifyId,recipePraiseNum from recipedetails ORDER BY detailsId DESC',[]);
    }
}

module.exports = new DB();
