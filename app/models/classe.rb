class Classe < ApplicationRecord
  belongs_to :level
  has_many :students

  def to_s
   "#{designation}"

 end
end
