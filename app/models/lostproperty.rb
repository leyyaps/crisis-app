class Lostproperty < ApplicationRecord

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :mobile, :content

    validates :name,
      presence: true

    validates :email,
      presence: true

    validates :mobile,
      presence: true

    validates :content,
      presence: true
end
