json.extract! task, :id, :name, :description, :status, :due_to, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
