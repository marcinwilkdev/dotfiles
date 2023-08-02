define dmesg
        set $__log_buf = $arg0
        set $log_start = $arg1
        set $log_end = $arg2
        set $x = $log_start
        echo "
        while ($x < $log_end)
                set $c = (char)(($__log_buf)[$x++])
                printf "%c" , $c
        end
        echo "\n
end

document dmesg
dmesg __log_buf log_start log_end
Print the content of the kernel message buffer
end

define renote
  target remote :3333
  continue
end

define rerenote
  disconnect
  renote
end

set history save
set print pretty on
