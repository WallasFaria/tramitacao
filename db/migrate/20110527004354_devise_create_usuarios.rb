class DeviseCreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table(:usuarios) do |t|
      t.database_authenticatable :null => false
      #t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :usuarios, :email,                :unique => true
    #add_index :usuarios, :confirmation_token,   :unique => true
    add_index :usuarios, :reset_password_token, :unique => true
    # add_index :usuarios, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :usuarios
  end
end
