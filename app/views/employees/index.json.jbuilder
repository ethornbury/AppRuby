json.array!(@employees) do |employee|
  json.extract! employee, :id, :firstname, :lastname, :address, :leaveAllowance, :leaveTaken, :monthlySalary
  json.url employee_url(employee, format: :json)
end
