class Employee < ActiveRecord::Base
    has_many :Requests
end
