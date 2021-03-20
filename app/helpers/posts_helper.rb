module PostsHelper
  def show_name(post)
    content_tag(:p, "Author name: #{post.user.name}") if user_signed_in?
  end

  def show_links
    if user_signed_in?
      render 'down'
    else
      render 'up'
    end
  end
end
