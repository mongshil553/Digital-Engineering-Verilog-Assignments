restart

add_force {/full_adder_4_bit/A} -radix hex {0 0ns} {1 20ns} {0 40ns} {1 60ns} {0 80ns} {1 100ns} {0 120ns} {1 140ns} {0 160ns} {1 200ns} {3 250ns} {7 300ns} {f 350ns} {0 400ns} {f 500ns}
add_force {/full_adder_4_bit/B} -radix hex {0 0ns} {1 40ns} {0 80ns}  {1 120ns}                                      {0 160ns} {1 200ns} {3 250ns} {7 300ns} {f 350ns} {0 400ns} {e 500ns} {c 550ns} {8 600ns} {0 650ns}
add_force {/full_adder_4_bit/C0} -radix hex {0 0ns} {1 80ns}                                                         {0 160ns} {1 200ns}                                         {0 500ns}

run 850ns
