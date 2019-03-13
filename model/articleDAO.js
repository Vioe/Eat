const DAO = require("../model/DAO");

class DB {
    //获取全部文章
    getArticle(){
        return DAO("select * from article ORDER BY articleTime DESC",[])
    }

    //获取文章年分
    getArticleYear(){
        return DAO("select Year(articleTime) from article GROUP BY Year(articleTime) ORDER BY Year(articleTime) DESC",[])
    }


}

module.exports = new DB();
