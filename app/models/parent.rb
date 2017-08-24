class Parent < ApplicationRecord
  belongs_to :group
  has_many :messages

  def to_s
      "#{first_name + " " + last_name}"
  end
end
