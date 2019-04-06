const DAO = require("../model/DAO");

class DB {
    //获取全部文章
    getArticle(){
        return DAO("select * from article ORDER BY articleTime DESC",[])
    }

    //获取文章年分
    getArticleYear(){
        return DAO("select Year(articleTime) as year from article GROUP BY Year(articleTime) ORDER BY Year(articleTime) DESC",[])
    }

    // 根据年份查询月份
    getArticleMonth(year){
        return DAO("select MONTH(articleTime) as month from article where Year(articleTime)=? GROUP BY MONTH(articleTime) ORDER BY MONTH(articleTime) DESC",[year])
    }

    //根据年份月份查文章
    getArticleTime(year,month){
        return DAO("select * from article where Year(articleTime) =? and MONTH(articleTime) = ?",[year,month]);
    }

    //获取点赞数最多的前三张文章
    getThreeArticle(){
        return DAO("select * from (select * from article ORDER BY articlePraiseNum DESC) form LIMIT 0,3",[]);
    }

    //根据文章id获取文章详情
    getArticleDetail(articleId){
        return DAO("select * from article where articleId = ?",[articleId]);
    }

    //文章数点赞
    addPraiseNum(articleId){
        return DAO("update article set articlePraiseNum=articlePraiseNum+1 where articleId = ?",[articleId]);
    }

    //后台获取文章列表
    getAdminArticle(){
        return DAO("select articleId,articleTitle,articleTime,userId,classifyId from article",[]);
    }

    //管理员删除后台文章
    delAdminArticle(articleId){
        return DAO("delete from article where articleId = ?",[articleId])
    }

}

module.exports = new DB();
