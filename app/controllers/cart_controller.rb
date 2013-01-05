class CartController < ApplicationController
  require 'securerandom'
  def add_item2
    if session[:cart_id] and Cart.all.count > 0 and Cart.where(:cart_hash => session[:cart])
      @current_cart = Cart.find(session[:cart])
    else
      @cart_id = self.create
      session[:cart_id] = @cart_id
      @current_cart = Cart.find(@cart.id)
    end
    @book = Book.find_by_id(params[:id])
    if @book and @current_cart
      @line_item = @current_cart.line_items.build(:book_id => @book.id)
      if @line_item.save
        @respond_to do |format|

        end
      end
    end
    @line_items = LineItem.where(:cart_id => @current_cart)

  end

  def index
  end


  def create
      @cart = Cart.new(:cart_hash => SecureRandom.uuid)
      @cart.save
      @cart.id
  end
end
