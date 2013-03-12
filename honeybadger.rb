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

  on :message, /honeybadger.*(care|give a shit)/ do |m|
    m.reply 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQCs89JTPXOEXcbkh0gPgN24V8EffZPxC4xv_Pfetq_KnVIw4vw'
  end
end

bot.start
