# Description:
#   Utility commands noyaki.
#
# Commands:
#   hubot noyaki

module.exports = (robot) ->
  robot.hear /(野やき|ノヤキ|野焼き|のやき|NOYAKI)$/i, (msg) ->
    today = new Date()
    noyakiday = new Date today.getFullYear() + "-05-03 12:00:00 +0900"
    if (noyakiday.getTime() - today.getTime()) < 0
      noyakiday.setFullYear(noyakiday.getFullYear() + 1)
    
    diffMs = noyakiday.getTime() - today.getTime()
    
    dayMs     = 24*60*60*1000
    hourMs    = 60*60*1000
    minuteMs  = 60*1000
    secondsMs = 1000
    
    days = parseInt(diffMs/dayMs, 10)
    diffMs -= days * dayMs

    hours = parseInt(diffMs/hourMs, 10)
    diffMs -= hours * hourMs
    
    minutes = parseInt(diffMs/minuteMs, 10)
    diffMs -= minutes * minuteMs
    
    seconds = parseInt(diffMs/secondsMs, 10)
    

    msg.send "NOYAKIまであと#{days}日と#{hours}時間と#{minutes}分と#{seconds}秒くらいだよ！"