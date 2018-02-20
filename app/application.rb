require 'date'

class Application
  def call(env)
    resp = Rack::Response.new
    date = Date.today
    afternoon = Time.new(date.year, date.month, date.day, 12)

    if  afternoon <=> Time.now
      resp.write "Morning"
    elsif Time.now <=> afternoon
      resp.write "Afternoon"
    end

    resp.finish
  end
end
