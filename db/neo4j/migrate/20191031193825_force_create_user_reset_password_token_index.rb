class ForceCreateUserResetPasswordTokenIndex < Neo4j::Migrations::Base
  def up
    add_index :User, :reset_password_token, force: true
  end

  def down
    drop_index :User, :reset_password_token
  end
end
