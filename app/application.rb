class Application
    def call(env)
        resp = Rack::Response.new
        puts env
        time = Time.now
        time_values = time.to_a
        puts time
        puts time_values
    
        # resp.write "#{time_values}"
        if time_values[2] < 12 
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
    
end