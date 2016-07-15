class RepositoriesController < ApplicationController

  def index
      @client = Octokit::Client.new(:login => 'iannyanes', :password => 'tlp53qm6F413')
	  @user = @client.user
	  @user.login
	  @isAuthenticated = @client.user_authenticated?
      Octokit.auto_paginate=true
	  @search = @client.search_issues('author:Annyv2 type:pr is:open org:auth0', :sort => 'updated')
	  @search_issues_anny = @client.search_issues('author:Annyv2 type:issues state:open org:auth0')
	  @search_amialc = @client.search_issues('author:Amialc type:pr is:open org:auth0', :sort => 'updated')
	  @search_issues_amialc = @client.search_issues('author:Amialc type:issues state:open org:auth0')
	  @search_aguerere  = @client.search_issues('author:aguerere type:pr is:open org:auth0', :sort => 'updated')
	  @search_issues_aguerere = @client.search_issues('author:aguerere type:issues state:open org:auth0')
	  @search_mehreencs87 = @client.search_issues('author:mehreencs87 type:pr is:open org:auth0', :sort => 'updated')
	  @search_issues_mehreencs87 = @client.search_issues('author:mehreencs87 type:issues state:open org:auth0')
		@search_fiannolo = @client.search_issues('author:fiannolo type:pr is:open org:auth0', :sort => 'updated')
		@search_issues_fiannolo = @client.search_issues('author:fiannolo type:issues state:open org:auth0')
		@search_iannyanes = @client.search_issues('author:iannyanes type:pr is:open org:auth0', :sort => 'updated')
		@search_issues_iannyanes = @client.search_issues('author:iannyanes type:issues state:open org:auth0')







	end
  def search
      @client = Octokit::Client.new(:login => 'iannyanes', :password => 'tlp53qm6F413')
	  @user = @client.user
	  @user.login
	  @isAuthenticated = @client.user_authenticated?
      Octokit.auto_paginate=true
	  @search_merged = @client.search_issues('author:Annyv2 type:pr created:>2016-06-24 is:merged org:auth0', :sort => 'updated')
	  @search_issues_open_anny = @client.search_issues('author:Annyv2 type:issues created:>2016-06-24 state:open org:auth0')
	  @search_issues_anny = @client.search_issues('author:Annyv2 type:issues created:>2016-06-24 state:closed org:auth0')
	  @search_merged_amialc = @client.search_issues('author:Amialc type:pr created:>2016-06-24 is:merged org:auth0', :sort => 'updated')
	  @search_issues_open_amialc = @client.search_issues('author:Amialc type:issues created:>2016-06-24 state:open org:auth0')
	  @search_issues_amialc = @client.search_issues('author:Amialc type:issues created:>2016-06-24 state:closed org:auth0')
	  @search_merged_aguerere  = @client.search_issues('author:aguerere type:pr created:>2016-06-24 is:merged org:auth0', :sort => 'updated')
	  @search_issues_open_aguerere = @client.search_issues('author:aguerere type:issues created:>2016-06-24 state:open org:auth0')
	  @search_issues_aguerere = @client.search_issues('author:aguerere type:issues created:>2016-06-24 state:closed org:auth0')
	  @search_merged_mehreencs87 = @client.search_issues('author:mehreencs87 type:pr created:>2016-06-24 is:merged org:auth0', :sort => 'updated')
	  @search_issues_open_mehreencs87 = @client.search_issues('author:mehreencs87 created:>2016-06-24 type:issues state:open org:auth0')
	  @search_issues_mehreencs87 = @client.search_issues('author:mehreencs87 type:issues created:>2016-06-24 state:closed org:auth0')
		@search_merged_fiannolo = @client.search_issues('author:fiannolo type:pr created:>2016-06-24 is:merged org:auth0', :sort => 'updated')
		@search_issues_open_fiannolo = @client.search_issues('author:fiannolo created:>2016-06-24 type:issues state:open org:auth0')
		@search_issues_fiannolo = @client.search_issues('author:fiannolo type:issues created:>2016-06-24 state:closed org:auth0')
		@search_merged_iannyanes = @client.search_issues('author:iannyanes type:pr created:>2016-06-24 is:merged org:auth0', :sort => 'updated')
		@search_issues_open_iannyanes = @client.search_issues('author:iannyanes created:>2016-06-24 type:issues state:open org:auth0')
		@search_issues_iannyanes = @client.search_issues('author:iannyanes type:issues created:>2016-06-24 state:closed org:auth0')
  end
end