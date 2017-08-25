class Parent < ApplicationRecord
  belongs_to :group
  has_many :messages

  def to_s
      "#{first_name + " " + last_name}"
  end

  def self.search(term)
      if term
          where("first_name like ? or last_name like ? or phone like ?","%#{term}%","%#{term}%","%#{term}%")
      else
          all
      end
  end
end
