json.array!(@tasks) do |task|
  json.extract! task, :description, :status, :author_id, :category_id
  json.url task_url(task, format: :json)
end
