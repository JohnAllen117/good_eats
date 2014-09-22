class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates :zip_code, length: {is: 5, wrong_length: "Must have %{count} numbers"}
end
