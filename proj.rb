class SingletonClass
  @@instance = nil # экземпляр класса

  def self.GetInstance # статический метод возвращающий единственный экземпляр класса.
    if @@instance.nil?
      @@instance = new
    end
    return @@instance
  end

  private_class_method :new # Запрещаем создание экземпляров через new

  def some_method
    puts "I'm a singleton instance"
  end
end

instance1 = SingletonClass.GetInstance
instance1.some_method # => "I'm a singleton instance"

instance2 = SingletonClass.GetInstance
instance2.some_method # => "I'm a singleton instance"

puts instance1 == instance2 # => true

#@@instance ||= new