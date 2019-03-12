const router = require('koa-router')()
const userinfoController = require('../controllers/userinfoController');

router.post("/login",async(ctx,next)=>{
    await userinfoController.doLogin(ctx,next);
});
router.get('/bar', async(ctx,next) =>{

});

module.exports = router;
