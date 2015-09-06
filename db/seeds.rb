
#Post.all.each do |post|
 #title = post.title
#if title == "Newest"

  #nil
#else Post.create!(title: "Newest Title", body: "Newest Body")
#end
#end




#Post.all.fetch ("New")
 # if nil
  #  Post.create!(title: "New", body: "New")
  #else



   #Post.has_value?(title: "New")
    #if false
     # Post.create!(title: "New", body: "New")
    #else 
     # puts "Already exists"
    #end

    #Comment.has_value?("New Comment")
    #if nil
     # Comment.create!(body: "New Comment")
    #else 
     # puts "Already"
    #end


   # puts "Created a new post"
  #else 
   # puts "already exists"
  



#Comment.all.select {|comment| comment.body = "Newest Body" }
#if nil 
 # puts "nothing there"
#else 
 # puts "Something there"
#end
 # if nil
  #  Post.comment.create!(body: "New")
   # pust "created a new comment"
  #else 
   # puts "already exists"
  #end

  post = {title: "Newest Title", body: "Newest Body"}
  Post.create(post) unless Post.where(post).first

  comment = {body: "Newest Comment Body"}
  Comment.create(comment) unless Comment.where(comment).first