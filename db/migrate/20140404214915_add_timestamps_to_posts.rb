class AddTimestampsToPosts < ActiveRecord::Migration
  def change
    drop_table :posts

    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :text
      t.column :recipient_id, :integer
      t.column :author_id, :integer

      t.timestamps
    end
  end
end
