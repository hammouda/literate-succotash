class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :type
      t.string :session
      t.date :date_rep
      t.time :duration
      t.references :message, foreign_key: true
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
