include Nanoc::Helpers::Rendering

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
