restart

add_force {/Add_Subtractor/A[0]} -radix hex {0 0ns} {1 20ns} -repeat_every 40ns
add_force {/Add_Subtractor/A[1]} -radix hex {0 0ns} {1 40ns} -repeat_every 80ns
add_force {/Add_Subtractor/A[2]} -radix hex {0 0ns}
add_force {/Add_Subtractor/A[3]} -radix hex {0 0ns}

add_force {/Add_Subtractor/B[0]} -radix hex {0 0ns} {1 80ns} -repeat_every 160ns
add_force {/Add_Subtractor/B[1]} -radix hex {0 0ns} {1 160ns} -repeat_every 320ns
add_force {/Add_Subtractor/B[2]} -radix hex {0 0ns}
add_force {/Add_Subtractor/B[3]} -radix hex {0 0ns}

add_force {/Add_Subtractor/S_ctrl} -radix hex {0 0ns} {1 320ns} -repeat_every 640ns

run 640ns