class Classe < ApplicationRecord
  belongs_to :level
  has_many :students
end
