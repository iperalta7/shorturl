class ShortUrlsController < ApplicationController
    def index
      @short_urls = ShortUrl.all
      @short_url = ShortUrl.new
    end
  
    def create
      @short_url = ShortUrl.new(short_url_params)
      if @short_url.save
        redirect_to root_path, notice: 'Short URL was successfully created.'
      else
        @short_urls = ShortUrl.all
        render :index
      end
    end
  
    def show
      @short_url = ShortUrl.find(params[:id])
    end
  
    def redirect
      @short_url = ShortUrl.find_by(short_url: params[:short_url])
      redirect_to @short_url.original_url, allow_other_host: true
    end
  
    private
  
    def short_url_params
      params.require(:short_url).permit(:original_url)
    end
  end