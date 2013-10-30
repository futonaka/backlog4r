# Backlog4r

Under Development

This gem is the interface for WebAPI of Backlog.
* Backlog API
http://www.backlog.jp/api/

## Installation

Add this line to your application's Gemfile:

    gem 'backlog4r'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install backlog4r

## Usage

### Create client

    backlog = Backlog4r::Backlog.new("space_name", "user_id", "password")

### Get projects

    backlog.get_projects
    => [{"use_parent_child_issue"=>false,
         "id"=>100,
         "text_formatting_rule"=>"backlog",
         "archived"=>false,
         "name"=>"Project Name",
         "url"=>"https://space_name.backlog.jp/projects/PRJ",
         "key"=>"PRJ"},
        {"use_parent_child_issue"=>false,
         "id"=>101,
         "text_formatting_rule"=>"backlog",
         "archived"=>false,
         "name"=>"Project Name2",
         "url"=>"https://space_name.backlog.jp/projects/PRJ2",
         "key"=>"PRJ2"}]

### Get project

    backlog.get_project "project_key"
      or
    backlog.get_project 100  # project id
    => [{"use_parent_child_issue"=>false,
         "id"=>100,
         "text_formatting_rule"=>"backlog",
         "archived"=>false,
         "name"=>"Project Name",
         "url"=>"https://space_name.backlog.jp/projects/PRJ",
         "key"=>"PRJ"}]

### Get issue

It can be provided finding conditions by hash.

    backlog.find_issue({ projectId: 100, statusId: 2 })
    => [{"custom_fields"=> {},
      "summary"=>"Issue Summary",
      "estimated_hours"=>3.0,
      .
      .
      .
      "key"=>"PRJ-10"}]

### Create issue

It can be provided create conditions by hash.

    backlog.createIssue({projectId: 100, summary: "create issue"})
    => {"summary"=>"create test",
        "id"=>1001,
        "created_user"=>{"id"=>900, "name"=>"user name"},
        "status"=>{"id"=>1, "name"=>"未対応"},
        .
        .
        .
        "key"=>"PRJ-1"}

