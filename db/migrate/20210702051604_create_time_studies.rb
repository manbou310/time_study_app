class CreateTimeStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :time_studies do |t|

      t.timestamps
    end
  end
end
