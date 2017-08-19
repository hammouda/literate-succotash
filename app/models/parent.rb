class Parent < ApplicationRecord
  belongs_to :group
  has_many :messages
end
