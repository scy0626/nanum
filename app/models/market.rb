class Market < ActiveRecord::Base
    has_many :marketres
    belongs_to :user
end
