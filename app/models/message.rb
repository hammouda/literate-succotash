class Message < ApplicationRecord
  belongs_to :parent
  belongs_to :student
  belongs_to :teacher
  has_many :report
end
