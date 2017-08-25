class Classe < ApplicationRecord
  belongs_to :level
  has_many :students
  has_many :teachers, :through => :teachings
  def to_s
   "#{designation}"
 end
 def self.search(term)
     if term
         where("designation like ?", "%#{term}%")
     else
         all
     end
 end
end
