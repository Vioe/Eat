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
}

module.exports = new DB();
