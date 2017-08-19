class CreateClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :classes do |t|
      t.string :designation
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
