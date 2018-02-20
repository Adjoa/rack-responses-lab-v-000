class Application
  def call(env)
    resp = Rack::Response.new
    # afternoon = Time.new(nil, nil, nil, 12)

    if Time.now < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end
end
