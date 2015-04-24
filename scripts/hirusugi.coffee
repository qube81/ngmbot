# Description:
#   Utility commands noyaki.
#
# Commands:
#   hubot 昼過ぎ

module.exports = (robot) ->
  robot.hear /(昼|ひる).*(過ぎ|すぎ)/i, (msg) ->

    message = "「あなたの野焼きはいつから？」"

    if !Math.floor(Math.random()*5)
      message += "「各自解釈でおｋ」"
  
    else
      hours = [12..15][Math.floor(Math.random()*4)].toString();
      minutes = Math.floor(Math.random()*60).toString();
      message += "「私は#{hours}時#{minutes}分から」"

    msg.send message