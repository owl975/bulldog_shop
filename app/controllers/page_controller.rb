# CJ: controllers should be plural -- change to `pages_controller`
class PageController < ApplicationController
 
  def home
  	@products = Product.all
  end

  def about
  	@product = Product.all
  	@cart = session[:cart]
  end

  def faq

  end

  def contact

  end
end
