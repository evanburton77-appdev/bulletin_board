# == Schema Information
#
# Table name: commentaries
#
#  id              :integer          not null, primary key
#  comment_content :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  post_id         :integer
#
class Commentary < ApplicationRecord
end
