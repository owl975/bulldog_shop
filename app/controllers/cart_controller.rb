class CartController < ApplicationController
  def add
  	id = params[:id]
  	#if cart has been created then use existing cart
  	if session[:cart] then
  		cart = session[:cart]
  	else
  		session[:cart] = {}
  		cart = session[:cart]
  	end
  	# if the product has been added, increment value of cart
  	if cart[id] then
  		cart[id] = cart[id] + 1
  	else
  		cart[id] = 1
  	end
  		redirect_to :action => index
  end

  # clear the cart
  def clearCart
  	session[:cart] = nil
  	redirect_to :action => :index
  end

  def index
  	#if cart exists, show it on the page. otherwise pass empty value
  	if session[:cart] then
  		@cart = session[:cart]
  	else
  		@cart = {}
  	end
  end

end
