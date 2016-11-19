class ArticleCategories < ::Nanoc::DataSource
	identifier :article_categories

	def items
		categories_glob = File.join(@config[:articles_root], '*')
		Dir.glob(categories_glob).map do |category_path|
			filename = File.basename(category_path)
			item_identifier = '/categories/' + filename + '.html'
			new_item('', {}, item_identifier)
		end
	end
end
