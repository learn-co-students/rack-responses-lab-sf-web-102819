class Application

    def call(env)
        resp = Rack::Response.new
        
        now = Time.now
        
        # resp.write now
        if now.hour >= 12
        resp.write "Good afternoon"
        else
            resp.write "Good morning"
        end


        resp.finish
        
    end
end