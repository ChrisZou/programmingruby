class ProcExample
  def pass_in_block(&block)
    @block = block
    puts "@block is #{@block.class}"
  end

  def use_block(a)
    @block.call a
  end
end

pe = ProcExample.new
pe.pass_in_block {|val| puts val}
pe.use_block 'hello'
