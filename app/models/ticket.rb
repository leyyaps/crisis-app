class Ticket < ApplicationRecord

  mount_uploader :small_image, SmallImageUploader
  mount_uploader :cover_image, CoverImageUploader
  mount_uploader :square_image, SquareImageUploader
end
