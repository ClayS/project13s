require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { additional_notes: @animal.additional_notes, age: @animal.age, breed: @animal.breed, contact_affiliation: @animal.contact_affiliation, contact_email: @animal.contact_email, contact_name: @animal.contact_name, contact_phone: @animal.contact_phone, destination_city: @animal.destination_city, destination_state: @animal.destination_state, location_city: @animal.location_city, location_state: @animal.location_state, name: @animal.name, special_needs: @animal.special_needs }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { additional_notes: @animal.additional_notes, age: @animal.age, breed: @animal.breed, contact_affiliation: @animal.contact_affiliation, contact_email: @animal.contact_email, contact_name: @animal.contact_name, contact_phone: @animal.contact_phone, destination_city: @animal.destination_city, destination_state: @animal.destination_state, location_city: @animal.location_city, location_state: @animal.location_state, name: @animal.name, special_needs: @animal.special_needs }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animals_path
  end
end
