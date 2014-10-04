require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
      assert_raises (ActiveRecord::RecordNotFound) do
       get :show,  id: "1"
    end
  end

  test "should get edit" do
    assert_raises (ActiveRecord::RecordNotFound) do
      get :edit,  id: "1"
    end
  end

  test "should get destroy" do
    assert_raises (ActiveRecord::RecordNotFound) do
     get :destroy,  id: "1"
    end
  end

end
