class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :User, foreign_key: true
      t.date :date
      t.string :content

      t.timestamps
    end
  end
end
