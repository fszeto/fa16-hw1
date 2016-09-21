class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`

    a.map!{ |c| c.to_i + 2 }
    a = a.values_at(* a.each_index.select {|i| i.even?})
    a.uniq!
    [a.inject(:+), 10].min
  end
end


