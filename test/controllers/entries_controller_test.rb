require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { location_x: @entry.location_x, location_y: @entry.location_y, observation: @entry.observation, pet_breed: @entry.pet_breed, pet_color: @entry.pet_color, pet_name: @entry.pet_name, picture: @entry.picture, title: @entry.title, user_id: @entry.user_id }
    end

    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should show entry" do
    get :show, id: @entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry
    assert_response :success
  end

  test "should update entry" do
    patch :update, id: @entry, entry: { location_x: @entry.location_x, location_y: @entry.location_y, observation: @entry.observation, pet_breed: @entry.pet_breed, pet_color: @entry.pet_color, pet_name: @entry.pet_name, picture: @entry.picture, title: @entry.title, user_id: @entry.user_id }
    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry
    end

    assert_redirected_to entries_path
  end
end
