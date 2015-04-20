class Request < ActiveRecord::Base
  belongs_to :Employee
  has_many :RequestType
end
