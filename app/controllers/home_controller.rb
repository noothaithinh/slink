require 'uri'

class HomeController < ApplicationController
  def index
  end

  def new
  	if params[:url] =~ URI::regexp
	  	url = Noo.where(url: params[:url].strip).first
	  	if !url
	  		url = Noo.new(url: params[:url].strip)
	  		# @new_url.new_url = get_url_url(@new_url.id.to_i)
	  		url.save
	  	end

	  	@new_url = get_url_url(url.id) 
	  else
	  	flash[:msg] = "Invalid Url!"
	  end

  	render :index
  end

  def url
  	url = Noo.find_by_id(params[:id])
  	if url
  		redirect_to url.url
  	else
  		flash[:msg] = "Url not found!"
  		redirect_to root_path
  	end
  end
end
