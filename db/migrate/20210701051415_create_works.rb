class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.integer :date
      t.integer :process_name
      t.references :user
      t.references :chanel
      t.timestamps
    end
  end
end