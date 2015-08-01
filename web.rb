require 'open-uri'
require 'sinatra'
require "sinatra/reloader" if development?
require 'json'

helpers do
  alias_method :h, :escape_html

  def recent_repos
    url = "https://api.github.com/search/" +
          "repositries?q=sinatra&sort=updated"
    data = JSON.Perse(open(url).read)

    data["items"]
  end
end


get '/' do
  erb %{
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="UTF-8" />
      <link rel="stylesheet" href="/screen.css" type="text/css" />
    </head>

    <body>
      <h1>Sinatra Projects</h1>
      <ul>
      <% recent_repos.each do |item| %>
        <li>
          <a href'<%= h item["html_url"] %>'>
          <%= h item["full_name"] %></a><br>
          <%= h item["description"] %>
          (<%= h item["updated_at"] %>)
        </li>
      <% end %>
      </ul>
      <script type='text/jacascript'>
        setTimeout(function(){
          document.location.reload();
        }, 1000 * 60 * 10);
      </script>
    </body>
    </html>
  }
end




    





