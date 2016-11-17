def ga_tracking_code
	%Q[
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

			ga('create', '#{ENV['GA_TRACKING_ID']}', 'auto');
			ga('require', 'linkid');
			ga('send', 'pageview');
		</script>
	]
end

def gcs_search_results
	%Q[
		<script>
		  (function() {
		    var cx = '017496299940429983127:gi7q8brnwgo';
		    var gcse = document.createElement('script');
		    gcse.type = 'text/javascript';
		    gcse.async = true;
		    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
		    var s = document.getElementsByTagName('script')[0];
		    s.parentNode.insertBefore(gcse, s);
		  })();
		</script>
		<gcse:searchresults-only linktarget="_parent"></gcse:searchresults-only>
	]
end
