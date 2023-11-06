json.extract! comment, :id, :body, :likes, :dislikes, :question_id, :participant_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
