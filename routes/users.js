const router = require('koa-router')()

router.prefix('/users')

router.get('/', function (ctx, next) {
  ctx.body = 'this is a users response!'
})

router.get('/login', function (ctx, next) {
  ctx.body = 'this is a users/bar response'
})
router.get('/hh', function (ctx, next) {
    ctx.body = 'this is a users/bar response'
})

module.exports = router
