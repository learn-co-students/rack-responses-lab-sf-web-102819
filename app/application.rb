require "pry"
require "time"
require "date"
class Application
  
  def call(env)
    resp = Rack::Response.new
    # time = Time.new(2015, 11, 27, 14, 30)
    # new_time = DateTime.strptime(time, '%H')
    # new_time = time.hour
    # binding.pry
    # 0
    # puts new_time
    # self.each do |time|
    #   binding.pry
    #   0
      if Time.now.hour.to_i <= 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
    # end
    resp.finish
  end

end