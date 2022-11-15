require 'test_helper'

class MyAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_account = my_accounts(:one)
  end

  test "should get index" do
    get my_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_my_account_url
    assert_response :success
  end

  test "should create my_account" do
    assert_difference('MyAccount.count') do
      post my_accounts_url, params: { my_account: { address: @my_account.address, email: @my_account.email, first_name: @my_account.first_name, last_name: @my_account.last_name, my_budget: @my_account.my_budget, phone: @my_account.phone } }
    end

    assert_redirected_to my_account_url(MyAccount.last)
  end

  test "should show my_account" do
    get my_account_url(@my_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_account_url(@my_account)
    assert_response :success
  end

  test "should update my_account" do
    patch my_account_url(@my_account), params: { my_account: { address: @my_account.address, email: @my_account.email, first_name: @my_account.first_name, last_name: @my_account.last_name, my_budget: @my_account.my_budget, phone: @my_account.phone } }
    assert_redirected_to my_account_url(@my_account)
  end

  test "should destroy my_account" do
    assert_difference('MyAccount.count', -1) do
      delete my_account_url(@my_account)
    end

    assert_redirected_to my_accounts_url
  end
end
