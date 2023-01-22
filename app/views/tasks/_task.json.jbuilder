json.extract! task, :id, :context, :status, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
