json.extract! book, :id, :title, :author, :publish_date, :rating, :user_id, :group_session_id, :photo, :created_at, :updated_at
json.url book_url(book, format: :json)
