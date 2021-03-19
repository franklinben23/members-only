module PostsHelper
  def show_name(post)
    content_tag(:p, "Author name: #{post.user.name}") if user_signed_in?
  end
end
