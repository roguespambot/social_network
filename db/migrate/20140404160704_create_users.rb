class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
    end

    create_table :friendships do |t|
      t.column :user1_id, :int
      t.column :user2_id, :int
      t.column :start_date, :date
      t.column :end_date, :date
    end

    create_table :posts do |t|
      t.column :content, :text
      t.column :author_id, :int
      t.column :recipient_id, :int
    end
  end
end
