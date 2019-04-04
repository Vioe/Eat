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
        return DAO("select * from activitydetails where activityId=?",[activityId])
    }
}

module.exports = new DB();
