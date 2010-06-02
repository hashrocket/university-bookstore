class CreateAffiliateLinks < ActiveRecord::Migration
  def self.up
    create_table :affiliate_links do |t|
      t.string :name
      t.integer :visits_count, :default => 0
      t.integer :book_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :affiliate_links
  end
end
