require 'test_helper'

class RandAppTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save rand_app without number" do
    rand_app = RandApp.new
    assert_not rand_app.save
    # assert true
  end
  
  test "should save rand_app with number" do
    rand_app = RandApp.new(number: 0)
    assert rand_app.save
    # assert true
  end
end
