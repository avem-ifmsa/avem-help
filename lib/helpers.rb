include Nanoc::Helpers::Rendering

def slug_for(string)
	string.strip.downcase.gsub(' ', '-')
	      .gsub('á', 'a').gsub('à', 'a').gsub('ä', 'a')
	      .gsub('é', 'e').gsub('è', 'e').gsub('ë', 'e')
	      .gsub('í', 'i').gsub('ì', 'i').gsub('ï', 'i')
	      .gsub('ó', 'o').gsub('ò', 'o').gsub('ö', 'o')
	      .gsub('ú', 'u').gsub('ù', 'u').gsub('ü', 'u')
	      .gsub(/[^\w-]/, '')
end
