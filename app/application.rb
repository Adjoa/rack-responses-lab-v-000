class Application
  def call(env)
    resp = Rack::Response.new
    # afternoon = Time.new(nil, nil, nil, 12)

    if  12 <=> Time.now
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end
end
