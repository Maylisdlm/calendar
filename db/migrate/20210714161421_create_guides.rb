class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :email
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
