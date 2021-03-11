class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.bigint :user_id
      t.bigint :promo_code_id
      t.bigint :course_id
      t.timestamps
    end
    add_index :purchases, :user_id
  end
end
