class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV["ADMIN_EMAIL"]) do |user|
        user.password = ENV["ADMIN_PASSWORD"]
        user.password_confirmation = ENV["ADMIN_PASSWORD"]
        user.confirm!
        puts "confirmed passed"
        user.admin!
        puts "admin passed"
        user.approved!
      end
  end
end
