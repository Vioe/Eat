const DAO = require("../model/DAO");

class DB {
    //我关注的用户
    getAttentionUser(userId){
        return DAO('select * from (select * from attention where fansId = ?) k left join userinfo u on k.userId = u.userId ORDER BY attentionId DESC',[userId])
    }
    //删除关注用户
    delAttentionUser(userId,fansId){
        return DAO("delete from attention where userId = ? and fansId = ?",[userId, fansId]);
    }
    //增加一条关注用户
    addAttentionUser(userId,fansId){
        return DAO("insert into attention(userId,fansId) VALUES(?,?)",[userId,fansId]);
    }
    //是否有关注过改用户
    isAttentionUser(userId,fansId){
        return DAO("select count(1) count from attention where userId=? and fansId=?",[userId,fansId])
    }
}

module.exports = new DB();
