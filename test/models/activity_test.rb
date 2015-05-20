require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  test "it is valid" do
    assert activities(:one).valid?
  end

  test "it is not valid" do
    activity = activities(:one)
    activity.name = nil
    activity.user_id = nil

    assert !activity.valid?
  end
end
