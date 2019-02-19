const mysql = require("mysql");
const config = require("../model/dbconfig");
const pool = mysql.createPool(config);
function query(sql, values) {
    return new Promise((resolve, reject) => {
        pool.getConnection(function (err, connection) {
            if (err) {
                console.log("连接失败，错误信息"+err.message)
                reject(err);
            } else {
                connection.query(sql, values, (err, rows) => {
                    if (err) {
                        console.log("数据表不存在！"+err.message)
                        reject(err);
                    } else {
                        resolve(rows);
                    }
                    connection.release();
                })
            }
        })
    })
}
module.exports = query;