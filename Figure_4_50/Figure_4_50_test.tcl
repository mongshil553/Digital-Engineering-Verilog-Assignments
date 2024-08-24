restart

add_force {/Figure_4_50/CLK} -radix hex {0 0ns} {1 20ns} -repeat_every 40ns
add_force {/Figure_4_50/Reset} -radix hex {1 10ns} {0 30ns}

add_force {/Figure_4_50/X[1]} -radix hex {0 0ns} {1 7ns} -repeat_every 14ns
add_force {/Figure_4_50/X[2]} -radix hex {0 0ns} {1 14ns} -repeat_every 28ns
run 1000ns
