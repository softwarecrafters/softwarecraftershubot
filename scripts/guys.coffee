module.exports = (robot) ->

  guys = ['Hi! Just a friendly nudge that "guys" is a bit gender-specific, and we\'d prefer something more neutral, such as "Folks" or "Everyone" or "All." Thanks!', 'Hi! Just a friendly nudge that "guys" is a bit gender-specific, and we\'d prefer something more neutral, such as
   "Folks" or "Everyone" or "All." Thanks!', 'Hi! "Guys" is easily replaced with a more gender-neutral "All". We\'d
   appreciate if you tried to use that. Thanks!']

  robot.hear /guys/i, (res) ->
    robot.reply "Hello! #{res.message.user.name}, #{res.message.user.room},#{res.message.user.room_id}"
    robot.messageRoom res.message.user.room, "Hello1! #{res.message.user.room}"
    robot.send {room: res.message.user.room_id}, "Hello2! #{res.message.user.room_id}"


