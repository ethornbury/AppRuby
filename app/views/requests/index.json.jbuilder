json.array!(@requests) do |request|
  json.extract! request, :id, :startDate, :endDate, :approved, :employee_id, :requestType_id
  json.url request_url(request, format: :json)
end
