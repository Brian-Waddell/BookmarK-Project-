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
  
end
