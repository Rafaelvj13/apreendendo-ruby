def foo
  yield
  yield
end

foo {puts "Exe the block"}