module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter
    results = []
    @list.each { |item| results.push(item) if yield item }
    results
  end
end
