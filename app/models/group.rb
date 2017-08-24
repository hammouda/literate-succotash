class Group < ApplicationRecord
  has_many :parents

  def to_s
   "#{designation}"

 end
end
