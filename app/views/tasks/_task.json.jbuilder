json.extract! task, :id, :description, :due_date, :done, :created_at, :updated_at
json.url task_url(task, format: :json)
