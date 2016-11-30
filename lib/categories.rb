require 'uri'

def article_categories
	@items.find_all('/categories/*')
	      .sort_by { |i| category_index(i) }
end

def category_index(item)
	path = item.identifier.without_ext
	result = %r[^/categories/(\d+)-].match(path)
	(result && result[1].to_i) || 0
end

def category_name(item)
	path = item.identifier.without_ext
	result = %r[^/categories/(?:\d+-)([^/]+)].match(path)
	result && URI.unescape(result[1])
end

def category_slug(item)
	slug_for(category_name(item))
end

def category_link(item)
	'/' + category_slug(item)
end
