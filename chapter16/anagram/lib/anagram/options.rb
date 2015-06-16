module Anagram
    class Options
        DEFAULT_DICTIONARY = '/usr/share/dict/words'
        attr_reader :dictionary, :words_to_find

        def initialize(argv)
            @dictionary = DEFAULT_DICTIONARY
            parse(argv)
            @words_to_find = argv
        end
        private
        def parse(argv)
            OptionParser.new do |opts|
                opts.banner = "Usage: anagram [options ] word ..."
                opts.on('-d', '--dict path', String, 'path to dictionary') do |dict|
                    @dictionary = dict
                end
            end
        end
        def test
          
        end
    end
end
