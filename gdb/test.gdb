# gdb-multiarch --batch --config=test.gdb filename

set logging file gdb.output
set logging on

break drivers/clk/clk.c:3768

command 1
  print *core
  print *parent
  continue
end

target remote :3333
continue

set logging off
quit
