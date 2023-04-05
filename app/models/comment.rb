# == Schema Information
#
# Table name: comments
#
#  id              :integer          not null, primary key
#  comment_content :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Comment < ApplicationRecord
end
