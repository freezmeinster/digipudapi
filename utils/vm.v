module utils

struct VmData {
    name string
    nproc int
    mem int    
}

pub fn get_total_vm() int {
    return 10    
}

pub fn get_list_vms() []VmData {
    mut myvms := []VmData{}
    for a in 0 .. 5 {
        vm := VmData{"Nguk $a", 3, 4}
        myvms << vm    
    }
    return myvms
}
