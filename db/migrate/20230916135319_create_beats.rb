class CreateBeats < ActiveRecord::Migration[6.1]
  def change
    create_table :beats do |t|
      t.string :question3

      t.timestamps
    end
  end
end
