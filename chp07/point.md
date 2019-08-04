## Class

### 基本形
```rb
class User
  attr_reader :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  # instance_method
  def hello
    "Hello!"
  end

  #getter
  def name # !> method redefined; discarding old name
    @name
  end
  #setter
  def name=(name)
    @name = name
  end
  # getter/ setter 合わせてattr_accessorで代用可能！

  # クラスメソッドその1
  def self.create_users(names)
    names.map{|name| User.new(name, 30)}
  end
end
```

### self
- クラス構文直下 => class
- classメソッド内 => class
- インスタンスメソッド内 => instance
- instance_method内のsetterだけは、self keyword必須

### 継承関連
- [instance | class].is_a?('Class') => 親でも祖父母でもtrueになる
- [instance].instance_of?('Class') => 親のみ該当
- [instance | class].methods => methodの一覧
- 