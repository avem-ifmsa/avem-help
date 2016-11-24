require 'nokogiri'

def category_articles(category)
	@items.find_all('/articles/**/*')
	      .select { |i| article_category(i) == category }
	      .sort_by { |i| article_index(i) }
end

def article_category(item)
	path = item.identifier.without_ext
	if result = %r[^/articles/(?:\d+-)?([^/]+)].match(path)
		article_categories.find do |category_item|
			category_name(category_item) == result[1]
		end
	end
end

def article_title(item)
	path = item.identifier.without_ext
	result = %r[^/articles/[^/]+/(?:\d+-)?([^/]+)].match(path)
	result && result[1]
end

def article_index(item)
	path = item.identifier.without_ext
	result = %r[^/articles/[^/]+/(\d+)-].match(path)
	(result && result[1].to_i) || 0
end

def article_excerpt(item)
	max_words = 40
	content = Nokogiri::HTML(item.compiled_content).content.split
	if content.size > max_words
		content = content.take(40)
		content.last << '...'
	end
	content.join(' ')
end

def article_slug(item)
	slug_for(article_title(item))
end

def article_link(item)
	category_item = article_category(item)
	category_link(category_item) + '/' + article_slug(item) + '.html'
end
