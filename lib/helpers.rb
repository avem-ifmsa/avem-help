include Nanoc::Helpers::Rendering

def slug_for(string)
	string.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
end
