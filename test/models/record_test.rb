require 'test_helper'

class RecordTest < ActiveSupport::TestCase
  test "it is valid" do
    assert records(:one).valid?
  end

  test "it is not valid" do
    record = records(:one)
    record.activity_id = nil

    assert !record.valid?
  end
end
