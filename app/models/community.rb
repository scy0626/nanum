class Community < ActiveRecord::Base
    has_many :communityres
    belongs_to :user
end
