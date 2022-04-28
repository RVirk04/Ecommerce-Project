class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10)
      @current_user = current_user
    end
    fetch_products
  end

  def products; end

  def about; end

  def contact; end

  def newin
    fetch_products
  end

  def men
    @products = Product.where(category_id: 1).order('created_at DESC')
                       .paginate(page: params[:page], per_page: 10)
  end

  def women
    @products = Product.where(category_id: 2).order('created_at DESC')
                       .paginate(page: params[:page], per_page: 10)
  end

  def kids
    @products = Product.where(category_id: 3).order('created_at DESC')
                       .paginate(page: params[:page], per_page: 10)
  end

  def accessories
    @products = Product.where(category_id: 4).order('created_at DESC')
                       .paginate(page: params[:page], per_page: 10)
  end

  private

  def fetch_products
    @products = if params[:keyword] || params[:search_category]
                  Product.search(params[:keyword], params[:search_category])
                         .order('created_at DESC')
                         .paginate(page: params[:page], per_page: 10)
                else
                  Product.order('created_at DESC')
                         .paginate(page: params[:page], per_page: 10)
                end
  end
end
