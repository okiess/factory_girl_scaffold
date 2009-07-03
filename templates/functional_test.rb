require 'test_helper'

class <%= controller_class_name %>ControllerTest < ActionController::TestCase
  def setup
    # login_user
    @<%= file_name %> = Factory.create(:<%= file_name %>)
  end

  test "should get index" do
    get :index
    assert_not_nil assigns(:<%= table_name %>)
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_not_nil assigns(:<%= file_name %>)
    assert_response :success
  end

  test "should create <%= file_name %>" do
    assert_difference('<%= class_name %>.count') do
      post :create, :<%= file_name %> => Factory.attributes_for(:<%= file_name %>)
      assert_not_nil assigns(:<%= file_name %>)
    end
    assert_redirected_to <%= file_name %>_path(assigns(:<%= file_name %>))
  end

  test "should show <%= file_name %>" do
    get :show, :id => @<%= file_name %>.to_param
    assert_not_nil assigns(:<%= file_name %>)
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @<%= file_name %>.to_param
    assert_not_nil assigns(:<%= file_name %>)
    assert_response :success
  end

  test "should update <%= file_name %>" do
    put :update, :id => @<%= file_name %>.to_param, :<%= file_name %> => { }
    assert_not_nil assigns(:<%= file_name %>)
    assert_redirected_to <%= file_name %>_path(assigns(:<%= file_name %>))
  end

  test "should destroy <%= file_name %>" do
    assert_difference('<%= class_name %>.count', -1) do
      delete :destroy, :id => @<%= file_name %>.to_param
      assert_not_nil assigns(:<%= file_name %>)
    end
    assert_redirected_to <%= table_name %>_path
  end
end
