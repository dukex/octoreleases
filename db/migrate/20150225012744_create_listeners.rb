class CreateListeners < ActiveRecord::Migration
  def change
    create_table :listeners do |t|
      t.string :email
      t.references :project

      t.timestamps null: false
    end
  end
end
