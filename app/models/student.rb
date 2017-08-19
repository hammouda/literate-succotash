class Student < ApplicationRecord
  belongs_to :classe
  has_many :remark
  has_many :messages
end
