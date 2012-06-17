require 'spec_helper'

describe "Users" do
  before(:each) do
    FactoryGirl.create(:account)
  end

  describe "registration" do
    it "should render account_id" do
      host= 'http://test.scrumlog.dev'
      visit(host + '/users/sign_up')

      # save_and_open_page

      find("#user_account_id").value.should eq "9999"
    end
  end
end
