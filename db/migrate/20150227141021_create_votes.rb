class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :message
    end
  end
end
