class CreatePromoCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :promo_codes do |t|
      t.string :code
      t.bigint :course_id
      t.integer :lesson_limit
      t.integer :duration
      t.timestamps
    end
    add_index :promo_codes, :code
  end
end
