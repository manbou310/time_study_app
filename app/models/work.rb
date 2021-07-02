class Work < ApplicationRecord

  belongs_to :user
  belongs_to :chanel
  has_many :time_studies

  with_options presence: true do
    validates :date
    validates :process_name
  end

  end
end
