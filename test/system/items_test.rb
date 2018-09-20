require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit items_url

    assert_selector ".card", count: Item.count
  end

  test "visiting home page" do
    visit "/"
    assert_selector "h1", text: "Rent tested sports eQuipment"
  end

  test "lets a signed in user post a new item" do
    login_as users(:reed)
    visit "/items/new"

    fill_in "item_name", with: "Snowboard"
    fill_in "item_description", with: "Great Board for to shred the weekend pow"
    fill_in "item_price", with: 35
    select 'Snow', from: 'item_category'
    attach_file "item_photo", Rails.root + "app/assets/images/snowboard.jpg"
    fill_in "item_address", with: "Salt Lake City, UT, USA"

    click_on "Post your item"
  end
end
