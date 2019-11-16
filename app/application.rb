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

# class Application
 
#   def call(env)
#     resp = Rack::Response.new
 
#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)
 
#     resp.write "#{num_1}\n"
#     resp.write "#{num_2}\n"
#     resp.write "#{num_3}\n"
 
#     if num_1==num_2 && num_2==num_3
#       resp.write "You Win"
#     else
#       resp.write "You Lose"
#     end
 
#     resp.finish
#   end
 
# end