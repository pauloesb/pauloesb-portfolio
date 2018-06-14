class TopicsController < ApplicationController
  layout "blog"

  def show
    @topics = Topic.all
    @topic = Topic.find(params[:id])

    if logged_in? :site_admin
      @blogs = @topic.blogs.recent.page(params[:page]).per(4)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(4)
    end
  end
end
