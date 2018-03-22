class Contact < ApplicationRecord
  belongs_to :user
  has_many :addresses
  has_many :phone_numbers

  accepts_nested_attributes_for :addresses, :phone_numbers
end
