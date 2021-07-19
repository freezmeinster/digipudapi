module utils

import runtime

pub fn get_total_cpu() int {
    return runtime.nr_cpus()  
}

pub fn get_total_memory() int {
    return 32   
}

pub fn get_total_disk() int {
    return 32   
}
