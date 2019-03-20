const DAO = require("../model/DAO");

class DB {
    getActivity(){
        return DAO("select * from activitydetails",[]);
    }
}

module.exports = new DB();
