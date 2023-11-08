# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  body           :string           not null
#  dislikes       :integer
#  likes          :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  participant_id :integer
#  question_id    :integer
#
class Comment < ApplicationRecord
  
  has_many  :questions, class_name: "Question", foreign_key: "comment_id", dependent: :destroy

  belongs_to :participant, required: true, class_name: "SessionParticipant", foreign_key: "participant_id" 

end
