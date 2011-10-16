require './binding_of_caller'

class Z
  def z
    u = 10
    A.new.a
  end
end

class A
  def a
    y = 10
    B.new.b
  end
end

class B
  def b
    x = 10
    puts binding_of_caller.eval('self')
    puts binding_of_caller.eval('local_variables')
  end
end

Z.new.z

