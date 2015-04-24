# Description:
#   Utility commands noyaki.
#
# Commands:
#   hubot 昼過ぎ

module.exports = (robot) ->
  robot.hear /(昼|ひる)(過ぎ|すぎ)/i, (msg) ->

    hours = [12..15][parseInt(Math.random()*4)]
    minutes = parseInt(Math.random()*60)

    hirusugiTime = hours + ':' + minutes

    msg.send "「あなたの野焼きはいつから？」「私は"+hirusugiTime+"から」"