module Avem
	module Helpers
		module Articles
			def slug_for(string)
				string.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
			end

			def category_slug(item)
				slug_for item[:category]
			end

			def article_slug(item)
				slug_for item[:title]
			end

			def article_categories
				@items.find_all('/articles/*').map {|a| a[:category] }.uniq
			end

			def category_articles(category)
				@items.find_all('/articles/*').select {|a| a[:category] == category }
			end
		end
	end
end

include Avem::Helpers::Articles
