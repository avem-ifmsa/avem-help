def article_categories
	@items.find_all('/articles/**/*')
	      .sort_by { |i| category_index(i) }
	      .map { |i| article_category(i) }
	      .uniq
end

def category_articles(category)
	@items.find_all('/articles/**/*')
	      .select { |i| article_category(i) == category }
	      .sort_by { |i| article_index(i) }
end

def article_category(item)
	path = item.identifier.without_ext
	result = %r[^/articles/(?:\d+-)?([^/]+)].match(path)
	item[:category] || result[1]
end

def category_index(item)
	path = item.identifier.without_ext
	result = %r[^/articles/(\d+)-].match(path)
	item[:category_index] || (result && result[1]) || 0
end

def article_title(item)
	path = item.identifier.without_ext
	result = %r[^/articles/[^/]+/(?:\d+-)?([^/]+)].match(path)
	item[:title] || (result && result[1])
end

def article_index(item)
	path = item.identifier.without_ext
	result = %r[^/articles/[^/]+/(\d+)-].match(path)
	item[:index] || (result && result[1]) || 0
end

def category_link(item)
	"/#{category_slug item}/"
end

def article_link(item)
	"/#{category_slug item}/#{article_slug item}.html"
end

def category_slug(item)
	slug_for article_category(item)
end

def article_slug(item)
	slug_for article_title(item)
end

def slug_for(string)
	string.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
end
