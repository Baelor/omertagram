class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /news
  def index
    @news = News.all.order(posted_at: :desc)
  end

  # GET /news/1
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  def create
    @news = News.new(news_params)

    if @news.save
      redirect_to @news, notice: 'News was successfully created. Broadcasting to all subscribers in the background.'
    else
      render :new
    end
  end

  # PATCH/PUT /news/1
  def update
    if @news.update(news_params)
      redirect_to @news, notice: 'News was successfully updated.
                                  Note: This won\'t change messages that were already sent.'
    else
      render :edit
    end
  end

  # DELETE /news/1
  def destroy
    @news.destroy
    redirect_to news_index_url, notice: 'News was successfully deleted.
                                         Note: This won\'t delete messages that were already sent.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_news
    @news = News.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def news_params
    params.require(:news).permit(:text, :posted_at, :news_source, :news_source_reference)
  end
end
