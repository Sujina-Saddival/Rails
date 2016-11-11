class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event
      t.string :venue
      t.datetime :date
      t.string :time
      t.string :description
      t.string :invited
      t.string :invite
      t.string :status

      t.timestamps null: false
    end
  end
end
