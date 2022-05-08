<h2>Results index</h2>

<table class="table table-hover table-inverse">
  <% if @range == "User" %>
    <tbody>
      <% @users.each do |user| %>
        <tr>
          <td><%= user.name %></td>
        </tr>
      <% end %>
    </tbody>
  <% else %>
    <tbody>
      <% @books.each do |book| %>
        <tr>
          <td><%= book.title %></td>
          <td><%= book.body %></td>
        </tr>
      <% end %>
    </tbody>
  <% end %>
</table>