class Borrowre < ActiveRecord::Base
    belongs_to :borrow
    belongs_to :user
end
