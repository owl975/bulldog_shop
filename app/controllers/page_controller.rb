class PageController < ApplicationController
  def home
  	@products = Product.all

  	
  end

  def about
  end

  def faq
  end

  def contact
  end
end
