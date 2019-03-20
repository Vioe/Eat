const articleDAO = require("../model/articleDAO");

module.exports = {
    //获取所有文章
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

    //年月份筛选文章
    getArticleTime: async (ctx,next) =>{
        try{
            let year = ctx.params.year;
            let month = ctx.params.month;
            console.log(year,month)
            let json = await articleDAO.getArticleTime(year,month)
            ctx.body = {"code": 200 ,"message": "ok",data: json}
        }catch(e) {
            ctx.body = {"code": 500, "message": "年月获取失败" + e.message, data: []}
        }
    },

    //点赞数最多的前三个文章
    getThreeArticle: async (ctx,nect) => {
        try{
           let json = await articleDAO.getThreeArticle();
           ctx.body = {"code": 200,"message": "ok",data:json};
        }catch (e) {
            ctx.body = {"code": 500, "message": "获取前三篇文章失败" + e.message, data: []}
        }
    }

}
