class Post < ApplicationRecord
  mount_uploader :image, PostImageUploader
  default_scope { order("created_at DESC") }
end
