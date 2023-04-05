Rails.application.routes.draw do
  get("/", { :controller => "posts", :action => "index" })
  get("/posts", { :controller => "posts", :action => "index" })
  get("/posts/:post_id", { :controller => "posts", :action => "show" })
  get("/create_post", { :controller => "posts", :action => "create" })
  get("/create_comment/:post_id", { :controller => "posts", :action => "create_comment" })
  get("/delete_post/:post_id", { :controller => "posts", :action => "delete_post" })
  get("/delete_comment/:post_id/:comment_id", { :controller => "posts", :action => "delete_comment" })
  get("/edit_post/:post_id", { :controller => "posts", :action => "edit_post" })
  get("/make_edit/:post_id", { :controller => "posts", :action => "make_edit" })
end
