## Проверка работы вручную:
irb
require_relative 'sequence'
s = Sequence.new
s.call(5)
1
11
21
1211
111221
312211
=> "312211"

## Тест с minitest:
ruby test.rb
