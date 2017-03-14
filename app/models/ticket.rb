class Ticket < ApplicationRecord

  mount_uploader :small_image, SmallImageUploader
  mount_uploader :cover_image, CoverImageUploader
  mount_uploader :square_image, SquareImageUploader

  default_scope { order(date: :asc) }

  scope :past, ->{ where("date < ?", Time.now)}
  scope :upcoming, -> { where("date > ?", Time.now)}


end
