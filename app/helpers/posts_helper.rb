module PostsHelper
  def show_name(post)
    if user_signed_in?
      content_tag(:p, "Author name: #{post.user.name}")
    end
  end
end
