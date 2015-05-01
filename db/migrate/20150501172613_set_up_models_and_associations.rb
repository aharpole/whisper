class SetUpModelsAndAssociations < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.timestamps null: false
      t.string :title
      t.text :detail
      t.belongs_to :room, index: true
      t.boolean :email_to_room, default: false
    end
    
    create_table :members do |t|
      t.timestamps null: false
      t.string :email
    end
    
    create_table :memberships do |t|
      t.timestamps null: false
      t.belongs_to :member, index: true
      t.belongs_to :room, index: true
    end
    
    create_table :responses do |t|
      t.timestamps null: false
      t.text :detail
      t.belongs_to :topic, index: true
    end
    
    add_column :rooms, :slug, :string, null: false
    add_index :rooms, :slug, unique: true
    add_index :members, :email, unique: true
  end
end
