FactoryGirl.define do
   factory :user do
     name "Douglas Adams"
     sequence(:email, 100) { |n| "person#{n}@example.com" }
     password "helloworld"
     password_confirmation "helloworld"
     confirmed_at Time.now

     after(:build) do |comment|
     factory:user_with_post_and_comment
    
      post.title "Post Title"
      post.body "This is the body of the newly created post"
      post.
   end
 end

   FactoryGirl.define do
  factory :user_with_post_and_comment do
    first_name "John"
    last_name  "Doe"
    admin false

    after(:build) do |comment|
       comment.class.skip_callback(:create, :after, :send_favorite_emails)
     end

     after(:build) do |post|
       post.class.skip_callback(:create, :after, :send_favorite_emails)
     end
  
    
  end
 end