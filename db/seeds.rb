Post.delete_all

Post.create(
  id: 1,
  title: "My Very First Post",
  published_at: Time.now - 1.day,
  body:
  %Q{### There Is Something You Should Know!

  This is my very first post using markdown!

  How do you like it?  I learned this from [RichOnRails.com](http://richonrails.com/articles/rendering-markdown-with-redcarpet)!}
)

Post.create(
  id: 2,
  title: "My Second Post",
  published_at: Time.now,
  body:
  %Q{### My List of Things To Do!

  Here is the list of things I wish to do!

  * write more posts
  * write even more posts
  * write even more posts!}
)