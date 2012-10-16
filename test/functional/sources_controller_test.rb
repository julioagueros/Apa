require 'test_helper'

class SourcesControllerTest < ActionController::TestCase
  setup do
    @source = sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create source" do
    assert_difference('Source.count') do
      post :create, source: { author: @source.author, edition: @source.edition, magazine_num: @source.magazine_num, pages: @source.pages, pub_date: @source.pub_date, pub_house: @source.pub_house, pub_place: @source.pub_place, ref_date: @source.ref_date, ref_type: @source.ref_type, title2: @source.title2, title: @source.title, volume: @source.volume, website: @source.website }
    end

    assert_redirected_to source_path(assigns(:source))
  end

  test "should show source" do
    get :show, id: @source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @source
    assert_response :success
  end

  test "should update source" do
    put :update, id: @source, source: { author: @source.author, edition: @source.edition, magazine_num: @source.magazine_num, pages: @source.pages, pub_date: @source.pub_date, pub_house: @source.pub_house, pub_place: @source.pub_place, ref_date: @source.ref_date, ref_type: @source.ref_type, title2: @source.title2, title: @source.title, volume: @source.volume, website: @source.website }
    assert_redirected_to source_path(assigns(:source))
  end

  test "should destroy source" do
    assert_difference('Source.count', -1) do
      delete :destroy, id: @source
    end

    assert_redirected_to sources_path
  end
end
