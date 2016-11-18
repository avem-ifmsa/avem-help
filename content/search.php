<% render '/content.html', search_query: '$_GET["q"]' do %>
	<div class="search-results">
		<%= gcs_search_results %>
	</div>
<% end %>
