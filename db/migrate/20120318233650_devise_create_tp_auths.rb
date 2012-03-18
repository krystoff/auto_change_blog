class DeviseCreateTpAuths < ActiveRecord::Migration
  def change
    create_table(:tp_auths) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :tp_auths, :email,                :unique => true
    add_index :tp_auths, :reset_password_token, :unique => true
    # add_index :tp_auths, :confirmation_token,   :unique => true
    # add_index :tp_auths, :unlock_token,         :unique => true
    # add_index :tp_auths, :authentication_token, :unique => true
  end

end
