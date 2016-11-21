include Nanoc::Helpers::Rendering
include Nanoc::Helpers::XMLSitemap

def slug_for(string)
	string.strip.downcase
	      .gsub(' ', '-')
	      .gsub(/[áàä]/i, 'a')
	      .gsub(/[éèë]/i, 'e')
	      .gsub(/[íìï]/i, 'i')
	      .gsub(/[óòö]/i, 'o')
	      .gsub(/[úùü]/i, 'u')
	      .gsub(/[^\w-]/, '')
end
