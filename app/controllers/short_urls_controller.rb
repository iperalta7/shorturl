class ShortUrlsController < ApplicationController

  # POST /short_urls
  # Create a new short URL
  def create
    short_url = ShortUrl.new(short_url_params)
    if short_url.save
      redirect_to root_path, notice: 'Short URL was successfully created.'
    else
      render :index
    end
  end

  # GET /short_urls/:short_url
  # Redirect to the original URL associated with the short URL
  def show
    short_url = ShortUrl.find_by(short_url: params[:short_url])
    if short_url
      redirect_to short_url.original_url, allow_other_host: true
    else
      redirect_to root_path, alert: 'Invalid short URL.'
    end
  end

  # DELETE /short_urls/:id
  # Delete a short URL
  def destroy
    short_url = ShortUrl.find(params[:id])
    short_url.destroy
    redirect_to root_path, notice: 'Short URL was successfully deleted.'
  end

  private

  # Strong parameters for creating a short URL
  def short_url_params
    params.require(:short_url).permit(:original_url)
  end
end
