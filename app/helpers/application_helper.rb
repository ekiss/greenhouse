module ApplicationHelper
	# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def date_data()
  	array = []
  	date = @ghouse.conditions.pluck(:created_at)
  	data = @ghouse.conditions.pluck(:air_temperature)
  	date2 = date.map { |n| n.to_i}
  	for i in 00..data.size-1
  		array[i] = [date2[i], data[i]]
  	end

  	array
  end


end
