# Предварительный просмотр всех писем по адресу:
# http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview <ActionMailer::Preview
  # Предварительный просмотр этого письма:
  # http://localhost:3000/rails/mailers/user_mailer/account_activation
    def account_activation
      user = User.first
      user.activation_token = User.new_token
      UserMailer.account_activation(user)
    end
  # Предварительный просмотр этого письма:
  # http://localhost:3000/rails/mailers/user_mailer/password_reset
    def password_reset
      UserMailer.password_reset
    end
end
  