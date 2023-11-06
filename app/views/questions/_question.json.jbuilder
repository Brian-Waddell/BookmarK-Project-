json.extract! question, :id, :topic, :title, :participant_id, :comment_id, :created_at, :updated_at
json.url question_url(question, format: :json)
