require 'minitest/autorun'

class ATestThat Fails < Minitest::Test
    def test_user
        user = User.find(1)
        refute_nil(user, 'User with ID = 1 should exists')
    end
end
