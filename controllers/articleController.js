const articleDAO = require("../model/articleDAO");

module.exports = {
    getArticle: async(ctx,next) =>{
        try{
            let data=await articleDAO.getArticle();
            let year=await articleDAO.getArticleYear();
            console.log(year.length)
            for(let i=0;i<year.length;i++){
                let monthList = []
                let month=await articleDAO.getArticleMonth(year[i].year);
                for(let j=0;j<month.length;j++){
                    monthList.push(month[j].month)
                    console.log(monthList)
                    year[i].month = monthList;
                }
            }
            let json = {
                allDate: data,
                dateTime: year
            }
            ctx.body = {"code": 200, "message": "ok", data: json}
        }catch (e) {
           ctx.body = {"code": 500, "message": "获取文章表失败" + e.message, data: []}
        }
    },

}
