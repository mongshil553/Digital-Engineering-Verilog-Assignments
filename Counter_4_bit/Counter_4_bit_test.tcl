restart

add_force {/Counter_4_bit/EN} -radix hex {1 0ns} {0 190ns} {1 450ns}
add_force {/Counter_4_bit/RESET} -radix hex {1 1ns} {0 5ns}
add_force {/Counter_4_bit/CLK} -radix hex {0 0ns} {1 50ns} -repeat_every 100ns

run 2560ns