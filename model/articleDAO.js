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
}

module.exports = new DB();
