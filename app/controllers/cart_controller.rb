class CartController < ApplicationController
 
 before_action :authenticate_user!, except: [:index]

  def add
  	id = params[:id]
  	#if cart has been created then use existing cart
    # CJ: awesome logic around building cart -- I would move to
    # a private method since it's used twice (`add` and `index` methods)
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
  	redirect_to :action => :index
  end

  # clear the cart
  # CJ: use snake_case here :)
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
