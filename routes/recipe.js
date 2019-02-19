const router = require('koa-router')()

router.prefix('/recipe')

router.get('/', function (ctx, next) {
    ctx.body = 'this is a users response!'
})

module.exports = router