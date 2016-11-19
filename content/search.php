<% query_encoded = '<?php echo htmlspecialchars($_GET["q"]) ?>' %>
<% render '/content.html', search_query: query_encoded do %>
	<div class="search-results">
		<%= gcs_search_results %>
	</div>
<% end %>
