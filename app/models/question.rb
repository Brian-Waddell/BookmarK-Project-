# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  body           :string           not null
#  topic          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  comment_id     :integer
#  participant_id :integer
#
class Question < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "question_id"
  belongs_to :participant, required: true, class_name: "SessionParticipant", foreign_key: "participant_id" 
end
