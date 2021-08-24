class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.belongs_to :organizer, references: :user
      t.string :category
      t.text :description
      t.string :location
      t.date :date 
      t.time :time 
      t.boolean :pets_allowed, default: true
      t.timestamps
    end
  end
end
