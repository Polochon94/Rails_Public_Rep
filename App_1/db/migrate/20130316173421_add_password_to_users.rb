class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_password, :string
  end
  
  def rollback
    remove_column :users, :encrypted_password
  end
  
  private

    def encrypt_password
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      string # Implémentation provisoire !
    end
end
