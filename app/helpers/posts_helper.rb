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

  def show_validation_errors(post)
    out = ''
    if post.errors.any?
      out += "<div id=\"error_explanation\"><h2>#{pluralize(@post.errors.count,
                                                            'error')} prohibited this post from being saved:</h2><ul>"

      post.errors.each do |error|
        out += "<li>#{error.full_message}</li>"
      end
      out += '</ul></div>'
    end
    out.html_safe
  end

  def app_flashes
    if flash[:notice]
      content_tag :div do
        content_tag(:p, notice)
      end
    elsif flash[:alert]
      content_tag :div do
        content_tag(:p, alert)
      end
    end
  end
end
