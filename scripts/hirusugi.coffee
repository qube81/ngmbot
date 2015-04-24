# Description:
#   Utility commands noyaki.
#
# Commands:
#   hubot 昼過ぎ

module.exports = (robot) ->
  robot.hear /(昼|ひる).*(過ぎ|すぎ)/i, (msg) ->

    msg.send "「あなたの野焼きはいつから？」"

    if !Math.floor(Math.random()*5)
      msg.send "「各自解釈でおｋ」"
      return

    hours = [12..15][Math.floor(Math.random()*4)].toString();
    minutes = Math.floor(Math.random()*60).toString();

    msg.send "「私は#{hours}時#{minutes}分から」"