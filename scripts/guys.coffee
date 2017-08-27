module.exports = (robot) ->

  guys = ['Hi! Just a friendly nudge that "guys" is a bit gender-specific, and we\'d prefer something more neutral, such as "Folks" or "Everyone" or "All." Thanks!', 'Hi! Just a friendly nudge that "guys" is a bit gender-specific, and we\'d prefer something more neutral, such as
   "Folks" or "Everyone" or "All." Thanks!', 'Hi! "Guys" is easily replaced with a more gender-neutral "All". We\'d
   appreciate if you tried to use that. Thanks!']

  robot.hear /guys/i, (res) ->
    robot.messageRoom res.message.user.name, "Hello1!"
    robot.send {room: res.message.user.name}, "Hello2!"


