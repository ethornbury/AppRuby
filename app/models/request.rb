class Request < ActiveRecord::Base
  belongs_to :employee
  belongs_to :requestType
end
