require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "the admins info should be valid" do
    assert @admin.valid?
  end

  def setup
    @admin = Admin.new(name:"temporary name",email:"123456@gmail.com",password:"123456")
  end

end
