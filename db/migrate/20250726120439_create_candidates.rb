class CreateCandidates < ActiveRecord::Migration[7.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.text :experience
      t.string :email

      t.timestamps
    end
  end
end
