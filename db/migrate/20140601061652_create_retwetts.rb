class CreateRetwetts < ActiveRecord::Migration
  def change
    create_table :retwetts do |t|
      t.integer :twet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
