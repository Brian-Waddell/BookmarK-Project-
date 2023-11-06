json.extract! group_session, :id, :owner_id, :book_id, :name_of_group, :list_of_members, :created_at, :updated_at
json.url group_session_url(group_session, format: :json)
