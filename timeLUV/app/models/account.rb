class Account < ActiveRecord::Base
  validates :name, presence: true, length: {in: 3..48}

end
