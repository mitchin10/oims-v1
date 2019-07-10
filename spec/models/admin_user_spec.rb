require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  context "validation admin_user" do
    it "ensure admin_user email presence" do
      admin_user = AdminUser.new(name: "Admin", email: "admin@example.com").save
      expect(admin_user).to eq(false)
    end

    it "ensure admin_user password & password_confirmation presence" do
      admin_user = AdminUser.new(name: "Admin", email: "admin@example.com", password: "password", password_confirmation: "password").save
      expect(admin_user).to eq(true)
    end
  end
end
