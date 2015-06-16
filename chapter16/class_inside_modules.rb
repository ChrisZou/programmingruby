#!/usr/bin/env ruby -w
module Formatter
    class Html
        NAME = "Hyperlink text and markup language"
        #...
    end
    class PDF

    end
end

html_formatter = Formatter::Html.new
p Formatter::Html::NAME
