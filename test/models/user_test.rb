require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns capitalized first and last name" do
    user = User.new(first_name: "john", last_name: "speelman")
    assert_equal "John Speelman", user.full_name
  end
end
