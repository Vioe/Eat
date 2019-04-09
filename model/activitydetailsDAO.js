const DAO = require("../model/DAO");

class DB {
    getActivity(){
        return DAO("select * from activitydetails",[]);
    }
    //获取用户参与的活动
    joinActivity(userId){
        return DAO("select * from activityresult r left join activitydetails d on r.activityDetailsId = d.activityId where r.userId = ? ORDER BY d.activitySTime DESC",[userId])
    }
    //活动详情
    getActivityDetail(activityId){
        return DAO("select * from activitydetails where activityId=?",[activityId]);
    }
    //后台管理活动列表
    getAdminAcitivity(){
        return DAO("select activityId,activityName,activitySTime,activityETime,activityState from activitydetails",[]);
    }
    //后台删除活动
    delAdminActivity(activityId){
        return DAO("delete from activitydetails where activityId = ?",[activityId])
    }
    //用户报名
    addActivityResult(userId,activityId){
        return DAO("insert into activityresult(userId,dietId,activityDetailsId) VALUES(?,?,?)",[userId,112,activityId])
    }
}

module.exports = new DB();
