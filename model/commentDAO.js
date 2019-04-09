const DAO = require("../model/DAO");

class DB {
    //获取评论
    getRecipeComment(recipeId){
        return DAO("select * from comment c left join userinfo u on c.userId = u.userId where detailsId = ? ORDER BY commentTime DESC ",[recipeId]);
    }
    //删除评论
    delComment(commentId){
        return DAO("delete from comment where commentId = ?",[commentId]);
    }
    //添加评论
    addComment(param){
        return DAO("insert into comment(userId,commentContent,myadminId,detailsId,commentTime) VALUES(?,?,?,?,?)",[param.commentUserId,param.commentContent,11,param.commentDetailsId,new Date()]);
    }
    //后台评论列表
    commentList(){
        return DAO("select commentId,userId,commentContent,detailsId,commentTime from comment ORDER BY commentTime DESC",[])
    }
}

module.exports = new DB();
