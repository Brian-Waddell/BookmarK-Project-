# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  title          :string
#  topic          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  comment_id     :integer
#  participant_id :integer
#
class Question < ApplicationRecord
  belongs_to :comment, required: true, class_name: "Comment", foreign_key: "comment_id"

  belongs_to :participant, required: true, class_name: "SessionParticipant", foreign_key: "participant_id" 

end
