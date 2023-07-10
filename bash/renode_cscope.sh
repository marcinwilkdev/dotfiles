find -a -t f '.cs|.resc|.repl|.robot|.c|.h' > cscope.files
cscope -bqk
