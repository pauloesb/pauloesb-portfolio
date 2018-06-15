class AddCoverImageToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :cover_image, :text
  end
end
