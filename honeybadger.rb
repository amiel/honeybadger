require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = 'honeybadger'
    c.server = "irc.oftc.net"
    c.channels = ["#bhamruby"]
  end

  on :message, /^honeybadger/ do |m|
    m.target.action "doesn't give a shit"
  end

end

bot.start
