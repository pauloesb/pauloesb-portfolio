module BlogsHelper
  def blog_published_time created_at
    "Published " + distance_of_time_in_words(created_at, Time.now) + " ago."
  end
end
