class CreateCommentaries < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaries do |t|
      t.string :comment_content
      t.integer :post_id

      t.timestamps
    end
  end
end
