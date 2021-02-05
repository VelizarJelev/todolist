json.extract! todotask, :id, :task_name, :duedate, :created_at, :updated_at
json.url todotask_url(todotask, format: :json)
