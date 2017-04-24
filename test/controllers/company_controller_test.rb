require 'test_helper'

class CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get company_about_us_url
    assert_response :success
  end

  test "should get product" do
    get company_product_url
    assert_response :success
  end

  test "should get distribution" do
    get company_distribution_url
    assert_response :success
  end

  test "should get contact_us" do
    get company_contact_us_url
    assert_response :success
  end

end
