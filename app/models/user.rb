# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many  :group_sessions, class_name: "GroupSession", foreign_key: "owner_id", dependent: :destroy

  has_many  :books, class_name: "Book", foreign_key: "user_id", dependent: :destroy

  has_many  :user_books, class_name: "UserBook", foreign_key: "user_id", dependent: :destroy
  
  has_many  :session_participants, class_name: "SessionParticipant", foreign_key: "user_id", dependent: :destroy
end
