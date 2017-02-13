#rails generate controller Underlings new 
#rails generate model devise Underling
#add devise_for :underlings to routes

#ammend page views
<% if overlord_signed_in? %>
  <%= current_overlord.name %>
<% elseif underling_signed_in? %>
  <%= current_underling.name %>
<% else %>
  <%= link_to "become an underling", new_underling_registration_path %>
  or
  <%= link_to "submit to your overlords", new_underling_session_path %>
<% end %>


#add to ArticlesController

  #add to create method
    author = current_overlord.name
    
  #add to bottom
    protected 
      def permitted_article_params
        article_params.require(:article).permit(:title, :preview, :text, :headline)
      end
      

      form_for :underling do |f|
        <% f.hidden_field, :lord, value => @overlord.id %>
        <%= f.submit %>
