# == Schema Information
#
# Table name: session_participants
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  group_id   :integer
#  user_id    :integer
#
class SessionParticipant < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"

  belongs_to :group, required: true, class_name: "GroupSession", foreign_key: "group_id"

  has_many  :comments, class_name: "Comment", foreign_key: "participant_id", dependent: :destroy

  has_many  :questions, class_name: "Question", foreign_key: "participant_id", dependent: :destroy 
  
end
