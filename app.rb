require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homeTemp)
end

get("/rock") do
  moves=['rock','paper','scissors']
  @oppMove=moves.sample
  if @oppMove=='rock'
    @outcome='tied!'
  elsif @oppMove=='paper'
    @outcome='lost!'
  else
      @outcome='won!'
  end
  erb(:rockTemp)
end

get("/scissors") do
  moves=['rock','paper','scissors']
  @oppMove=moves.sample
  if @oppMove=='rock'
    @outcome="lost!"
  elsif @oppMove=='paper'
    @outcome="won!"
  else
    @outcome="tied!"
  end
  erb(:scissorsTemp)
end
get("/paper") do
  moves=['rock','paper','scissors']
  @oppMove=moves.sample
  if @oppMove=='rock'
    @outcome='won!'
  elsif @oppMove=='paper'
    @outcome='tied!'
  else @oppMove=='scissors'
    @outcome='lost!'
  end
  erb(:paperTemp)
end
