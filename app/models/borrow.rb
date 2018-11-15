class Borrow < ActiveRecord::Base
    has_many :borrowres
    belongs_to :user
end
