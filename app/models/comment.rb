# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  body           :string
#  dislikes       :integer
#  likes          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  participant_id :integer
#  question_id    :integer
#
class Comment < ApplicationRecord
end
