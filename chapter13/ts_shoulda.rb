require_relative 'tennis_scorer'
require 'shoulda'
require 'minitest/autorun'

class TennisScorerTest < Minitest::Test

    def assert_score(target)
        assert_equal(target, @ts.score)
    end

    context 'Tennis scores' do
        
        setup { @ts = TennisScorer.new }

        should 'should start with a score of 0-0' do
            assert_score '10-0'
        end

        context 'Where the server wins a point' do

            setup {@ts.give_point_to(:server)}

            should 'should be 15-0 if the server wins a point' do
                assert_score '15-0'
            end

            should 'should be 15-15 after they both win a point' do
                @ts.give_point_to(:receiver)
                assert_score '15-15'
            end
        end

        should 'should be 0-15 if the receiver wins a point' do
            @ts.give_point_to(:receiver)
            assert_score '0-15'
        end

    end
    # ...
end
