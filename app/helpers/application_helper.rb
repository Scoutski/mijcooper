module ApplicationHelper

	  def intellinav
    nav = '<li>' + link_to('Home', root_path) + '</li>'
    nav+= '<li>' + link_to('Blog', posts_path) + '</li>'
    # if @current_user.present?
    #   nav+= '<li>' + link_to('My Blogs', myblogs_path) + '</li>'
    #   nav+= '<li>' + link_to('My Favorites', myfavs_path) + '</li>'
    # end
    nav
  end

  # def intellinav_right
  #   nav = ''
  #   if @current_user.present? && @current_user.admin?
  #     nav+= '<li>' + link_to('Show users', users_path) + '</li>'
  #     nav+= '<li>' + link_to('Show Blogs', blogs_path) + '</li>'
  #   end
  #   if @current_user.present?
  #     nav += '<li>' + link_to("Edit profile", edit_users_path)
  #     nav += '<li>' + link_to("Log Out #{@current_user.name}", login_path, :method => :delete, :confirm => 'Are you sure?')  + '</li>'
  #   else
  #     nav += '<li>' + link_to('Sign Up', new_user_path) + '</li>'
  #     nav += '<li>' + link_to('Login', login_path) + '</li>'
  #   end
  #   nav
  # end

end
