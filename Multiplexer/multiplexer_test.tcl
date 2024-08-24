restart

add_force {/multiplexer/s[0]} -radix hex {0 0ns} {1 320ns} -repeat_every 640ns
add_force {/multiplexer/s[1]} -radix hex {0 0ns} {1 640ns} -repeat_every 1280ns

add_force {/multiplexer/I[0]} -radix hex {0 0ns} {1 20ns} -repeat_every 40ns
add_force {/multiplexer/I[1]} -radix hex {0 0ns} {1 40ns} -repeat_every 80ns
add_force {/multiplexer/I[2]} -radix hex {0 0ns} {1 80ns} -repeat_every 160ns
add_force {/multiplexer/I[3]} -radix hex {0 0ns} {1 160ns} -repeat_every 320ns

run 1280ns