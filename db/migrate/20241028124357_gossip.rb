class Gossip < ActiveRecord::Migration[7.2]
  def change
    create_table :cities do |t|
      t.timestamps
      t.string :name
      t.string :zip_code
    end
    create_table :users do |t|
      t.timestamps
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :description
      t.integer :age
      t.belongs_to :city, index: true, foreign_key: true
    end
    create_table :gossips do |t|
      t.timestamps
      t.string :title
      t.text :content
      t.belongs_to :user, index: true, foreign_key: true
    end
        create_table :tags do |t|
      t.timestamps
      t.string :title
    end
    create_table :gossip_tags do |t|
      t.timestamps
      t.belongs_to :gossip, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true
    end
    create_table :private_messages do |t|
      t.timestamps
      t.text :content
      t.references :recipient, index: true
      t.references :sender, index: true
    end
    create_table :comments do |t|
      t.timestamps
      t.text :content
      t.belongs_to :gossip, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
    end
    create_table :likes do |t|
      t.timestamps
      t.belongs_to :gossip, index: true, foreign_key: true
      t.belongs_to :comment, index: true, foreign_key: true
    end


  end
end