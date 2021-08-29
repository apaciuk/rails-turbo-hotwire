class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :status
      t.text :description
      t.string :status_date
      t.string :datetime
      t.text :internal_info

      t.timestamps
    end
  end
end
