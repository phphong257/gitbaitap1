class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :username
      t.string :blog
      t.string :comment

    end
  end
end
