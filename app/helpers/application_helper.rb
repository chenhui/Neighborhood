# encoding: utf-8
module ApplicationHelper

	def full_title(page_title)
		base_title="滨文苑"
		return base_title if page_title.empty?
		return "#{base_title} | #{page_title}"
	end

end
