class Level < ApplicationRecord
  has_many :classes

  def to_s
      "#{designation}"
  end
end
