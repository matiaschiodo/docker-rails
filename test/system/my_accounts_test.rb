require "application_system_test_case"

class MyAccountsTest < ApplicationSystemTestCase
  setup do
    @my_account = my_accounts(:one)
  end

  test "visiting the index" do
    visit my_accounts_url
    assert_selector "h1", text: "My Accounts"
  end

  test "creating a My account" do
    visit my_accounts_url
    click_on "New My Account"

    fill_in "Address", with: @my_account.address
    fill_in "Email", with: @my_account.email
    fill_in "First name", with: @my_account.first_name
    fill_in "Last name", with: @my_account.last_name
    fill_in "My budget", with: @my_account.my_budget
    fill_in "Phone", with: @my_account.phone
    click_on "Create My account"

    assert_text "My account was successfully created"
    click_on "Back"
  end

  test "updating a My account" do
    visit my_accounts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @my_account.address
    fill_in "Email", with: @my_account.email
    fill_in "First name", with: @my_account.first_name
    fill_in "Last name", with: @my_account.last_name
    fill_in "My budget", with: @my_account.my_budget
    fill_in "Phone", with: @my_account.phone
    click_on "Update My account"

    assert_text "My account was successfully updated"
    click_on "Back"
  end

  test "destroying a My account" do
    visit my_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My account was successfully destroyed"
  end
end
