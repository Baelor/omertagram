require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('News.count') do
      post :create, news: { created_by: @news.created_by, news_source: @news.news_source, news_source_id: @news.news_source_id, posted_at: @news.posted_at, text: @news.text, updated_by: @news.updated_by }
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news, news: { created_by: @news.created_by, news_source: @news.news_source, news_source_id: @news.news_source_id, posted_at: @news.posted_at, text: @news.text, updated_by: @news.updated_by }
    assert_redirected_to news_path(assigns(:news))
  end

  test "should destroy news" do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to news_index_path
  end
end
