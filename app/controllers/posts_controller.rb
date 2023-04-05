class PostsController < ApplicationController
  def index
    unsorted_posts = Post.all
    @posts = unsorted_posts.order({ :created_at => :desc })

    render({ :template => "post_templates/index.html.erb" })
  end

  def show
    post_id = params.fetch("post_id")

    unsorted_comments = Commentary.where({ :post_id => post_id })
    @comments = unsorted_comments.order({ :created_at => :asc })

    @the_post = Post.where({ :id => post_id }).first

    render({ :template => "post_templates/show.html.erb" })
  end

  def create
    post = Post.new
    post.title = params.fetch("title")
    post.content = params.fetch("content")
    post.save

    redirect_to("/posts/" + post.id.to_s)
  end

  def create_comment
    comment = Commentary.new
    comment.comment_content = params.fetch("content")
    comment.post_id = params.fetch("post_id")
    comment.save

    redirect_to("/posts/" + comment.post_id.to_s)
  end

  def delete_post
    post_id = params.fetch("post_id")

    post = Post.where({ :id => post_id }).first
    post.destroy

    redirect_to("/posts")
  end

  def delete_comment
    post_id = params.fetch("post_id")
    comment_id = params.fetch("comment_id")

    comment = Commentary.where({ :id => comment_id }).first
    comment.destroy

    redirect_to("/posts/" + post_id.to_s)
  end

  def edit_post
    @post_id = params.fetch("post_id").to_s
    @post = Post.where({ :id => @post_id }).first

    render({ :template => "post_templates/edit_page.html.erb" })
  end

  def make_edit
    post_id = params.fetch("post_id")

    post = Post.where({ :id => post_id }).first
    post.title = params.fetch("title")
    post.content = params.fetch("content")
    post.save

    redirect_to("/posts/" + post.id.to_s)
  end
end
