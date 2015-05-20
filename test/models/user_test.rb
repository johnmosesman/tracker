require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "it is valid" do
    assert users(:one).valid?
  end

  test "it is not valid" do
    user = users(:one)
    user.first_name = nil
    user.last_name = nil

    assert !user.valid?
  end
end
