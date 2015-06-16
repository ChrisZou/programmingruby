#!/usr/bin/env ruby -w
class App
    def where
        "App in top level"
    end
end

module Api
    class App
        def where
            "App inside module Api"
        end
    end

    def Api.test_app
        app = App.new
        app.where
    end
end

app = App.new
puts app.where
puts Api.test_app
