class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :place,       null: false
      t.string :description, null: false
      t.string :point,       null: false
      t.references :user,    foreign_key: true
      t.timestamps
    end
  end
end
