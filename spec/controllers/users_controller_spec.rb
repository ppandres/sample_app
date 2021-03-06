require 'spec_helper'

describe UsersController do
  integrate_views

  it "should use UsersController" do
    controller.should be_an_instance_of(UsersController)
  end

  it "should have the right title" do
	get 'new'
	response.should have_tag("title", /Sign up/)
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
end
