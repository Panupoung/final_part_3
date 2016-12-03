require 'test_helper'
class StaticPagesControllerTest < ActionDispatch::IntegrationTest

 def setup
  @base_title = "Ruby on Rails Tutorial Sample App"
 end

 test "should get home" do
  get root_path
  assert_response :success
  assert_select "title", "Home | #{@base_title}"
 end

 test "should get kingsong1" do
  get kingsong1_path
  assert_response :success
  assert_select "title", "kingsong1 | #{@base_title}"
 end

 test "should get kingsong1" do
  get kingsong2_path
  assert_response :success
  assert_select "title", "kingsong2 | #{@base_title}"
 end

end 
