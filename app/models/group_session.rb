# == Schema Information
#
# Table name: group_sessions
#
#  id              :integer          not null, primary key
#  list_of_members :string
#  name_of_group   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  book_id         :integer
#  owner_id        :integer
#
class GroupSession < ApplicationRecord
  
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"

  has_many  :group_sessions, class_name: "GroupSession", foreign_key: "book_id", dependent: :destroy

  has_many  :user_books, class_name: "UserBook", foreign_key: "book_id", dependent: :destroy 
end
