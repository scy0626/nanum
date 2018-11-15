class With < ActiveRecord::Base
    has_many :withres
    belongs_to :user
end
