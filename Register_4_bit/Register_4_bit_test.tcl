restart

add_force {/Register_4_bit/CLEAR} -radix hex {0 1ns} {1 5ns} {0 6ns}
add_force {/Register_4_bit/CLK} -radix hex {0 0ns} {1 50ns} -repeat_every 100ns
add_force {Register_4_bit/D} -radix hex {0 0ns} {7 40ns} {a 80ns} {d 120ns} {3 160ns} {c 200ns} {2 240ns} {6 280ns} {f 320ns} {9 360ns}

run 400ns