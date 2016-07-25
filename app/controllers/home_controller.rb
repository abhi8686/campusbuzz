class HomeController < ApplicationController
  def index
  	if params[:name]
  		a = Category.where(name: params[:name]).first
  		@posts = Post.where(category_id: a).order(id: :desc) if a && a.posts.count > 0
  	else
  		@posts = Post.all.order(id: :desc)
  	end
  end
end
