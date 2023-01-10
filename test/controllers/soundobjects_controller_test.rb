require "test_helper"

class SoundobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soundobject = soundobjects(:one)
  end

  test "should get index" do
    get soundobjects_url
    assert_response :success
  end

  test "should get new" do
    get new_soundobject_url
    assert_response :success
  end

  test "should create soundobject" do
    assert_difference('Soundobject.count') do
      post soundobjects_url, params: { soundobject: { Name: @soundobject.Name, color: @soundobject.color, description: @soundobject.description, image: @soundobject.image } }
    end

    assert_redirected_to soundobject_url(Soundobject.last)
  end

  test "should show soundobject" do
    get soundobject_url(@soundobject)
    assert_response :success
  end

  test "should get edit" do
    get edit_soundobject_url(@soundobject)
    assert_response :success
  end

  test "should update soundobject" do
    patch soundobject_url(@soundobject), params: { soundobject: { Name: @soundobject.Name, color: @soundobject.color, description: @soundobject.description, image: @soundobject.image } }
    assert_redirected_to soundobject_url(@soundobject)
  end

  test "should destroy soundobject" do
    assert_difference('Soundobject.count', -1) do
      delete soundobject_url(@soundobject)
    end

    assert_redirected_to soundobjects_url
  end
end
