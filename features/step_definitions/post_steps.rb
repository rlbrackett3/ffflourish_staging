
Given /^I have no posts$/ do
  Post.delete_all
end

Given /^I have posts titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    @me.posts.create!(:title => title)
  end
end

Given /^I have a post for "([^"]*)"$/ do |email|
  user = User.first(:conditions => { :email => email })
  user.posts.create!(:title => "title", :content => "content")
end

#---------------fragile and not working well---------------#
Given /^there are (\d+) comments$/ do |count|
  user = User.first
  post = user.posts.first
  n = count.to_i
#  n.times do
#    post.comments.create!(:content => "blank")
#  end
  unless n == 0
    c1 = post.comments.create!(:content => "comment 1")
    c2 = post.comments.create!(:content => "comment 2")
    c3 = post.comments.create!(:content => "comment 3")
  end
  post.comments.count.should == n
end

Given /^the following (.+) records$/ do |factory, table|
  user = User.first
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end

When /^I visit posts for "([^\"]*)"$/ do |email|
  user = User.first(:conditions => { :email => email })
  visit user_posts_path(user._id.to_s)
end

When /^I visit a post by "([^"]*)"$/ do |email|
  user = User.first(:conditions => { :email => email })
  post = user.posts.first
  visit user_post_path(user, post)
end

When /^I visit edit post by "([^"]*)"$/ do |email|
  user = User.first(:conditions => { :email => email })
  post = user.posts.first
  visit edit_user_post_path(user, post)
end

When /^there are no comments$/ do
  post = Post.first(:conditions => { :title => "title" })
  post.comments.count.should == 0
end

When /^there are comments$/ do
  post = Post.first(:conditions => { :title => "title" })
  post.comments.count.should > 0
end


Then /^I should have (\d+) posts$/ do |posts|
  post = Post.count.to_s.should == posts
end

Then /^I should see my name within "([^"]*)"$/ do |selector|
  name = @me.full_name
  page.has_content?(name)
end

Then /^the "([^"]*)" field within "([^"]*)" should not contain anything$/ do |field, selector|
  with_scope(selector) do
    field = find_field(field)
    field_value = (field.tag_name == 'textarea') ? field.text : field.value
    field_value.should ||= nil
  end
end

Then /^I should see my image within "([^"]*)"$/ do |selector|
  post = Post.first
  img = post.image.post_image.url
  page.has_content?(img)
end

