class Level < ApplicationRecord
  has_many :classes

  def to_s
      "#{designation}"
  end
  def self.search(term)
      if term
          where("designation like ?","%#{term}%")
      else
          all
      end

  end
end
