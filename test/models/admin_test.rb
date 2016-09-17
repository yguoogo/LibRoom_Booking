require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "the admins info should be valid" do
    assert @admin.valid?
  end

  test "admin name can not be blank" do
    @admin.name = "         "
    assert_not @admin.valid?
  end

  test "admin email can not be blank" do
    @admin.email = "                  "
    assert_not @admin.valid?
  end

#  test "admin password can not be blank" do
#    @admin.password = "                     "
#    assert_not @admin.valid?
#  end

  test "admin name can not be longer than 12" do
    @test_name = "1"*13
    @admin.name = @test_name
    assert_not @admin.valid?
  end

  test "admin email can not be longer than 256" do
    @test_email = "1"*257
    @admin.email = @test_email
    assert_not @admin.valid?
  end

  test "admin name format" do
    @admin.name = "haha*()_"
    assert_not @admin.valid?
  end

  test "admin email format" do
    @admin.email = "ahweoohigr"
    assert_not @admin.valid?
  end

  def setup
    @admin = Admin.new(name:"tem_name",email:"123456@gmail.com",
                  password:"123456", password_confirmation:"123456")
  end

end
