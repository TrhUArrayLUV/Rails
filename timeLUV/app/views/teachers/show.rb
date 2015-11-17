<h1><%= @teacher.name %></h1>

<h3>Submit time_out form </h3>
<%= form for [@teacher, TimeOut.new] do |f| %>
  <%= f.label :kid %>
  <%= f.collection_select(account_id, Kid.all, :id, :name) %>
  <%= f.text_field :start_time_out, :value => 1.0 %>
  <%= f.text_field :length, :value => 1 %>
  <%= f.submit %>

<h3>Time Outs</h3>

<%= @teacher.time_outs.each do |time_out| %>
    <div class="time_out">
      <%= time_out.length %>
      <%= time_out.kid.name %>
    </dv>

<% end %>
