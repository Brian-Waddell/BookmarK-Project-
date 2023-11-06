json.extract! session_participant, :id, :user_id, :group_id, :created_at, :updated_at
json.url session_participant_url(session_participant, format: :json)
