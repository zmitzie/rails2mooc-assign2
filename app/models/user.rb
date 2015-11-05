class User < ActiveRecord::Base
    has_one :profiles
    has_many :todo_lists
end
