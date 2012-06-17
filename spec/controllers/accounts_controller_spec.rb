require 'spec_helper'

describe AccountsController do

  describe "create account" do
    it "should create account" do
      subdomain = 'foo'
      destination = request.protocol + subdomain + '.' + request.host_with_port
      
      post :create, { :account => { :subdomain => subdomain,
                                 :user => { :email => 'joe@scrumlog.dev', :password => 'Hello2011' } } }

      assigns(:account).should be_kind_of Account
      assigns(:user).should be_kind_of User
      assigns(:user).account_role.should eq Account::OWNER

      response.should redirect_to(destination)
    end
  end

end
