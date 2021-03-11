class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.bigint :course_id
      t.string :title
      t.text   :content
      t.timestamps
    end
    add_index :lessons, :course_id
  end
end
