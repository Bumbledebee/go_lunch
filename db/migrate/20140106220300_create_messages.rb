class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message, null:false
      t.string :email, null:false

      t.timestamps
    end
  end
end
