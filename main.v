module main

import vweb
import json
import utils

const port = 8080

struct App {
    vweb.Context
}


["/"]
fn (mut app App) index() vweb.Result {
    mut ver := map[string]string
    ver['name'] = "digipudapi"
    ver['version'] = "0.9.0"
    return app.json(json.encode(ver))
}

["/dashboard"]
fn (mut app App) dashboard() vweb.Result {
    mut dash := map[string]int
    dash['total_vm'] = utils.get_total_vm()
    dash['total_cpu'] = utils.get_total_cpu()
    dash['total_memory'] = utils.get_total_memory()
    dash['total_disk'] = utils.get_total_disk()
    return app.json(json.encode(dash))
}

["/myvm"]
fn (mut app App) myvm() vweb.Result {
    myvms := utils.get_list_vms()
    return app.json(json.encode(myvms))    
}

["/vm/:vmid"]
fn (mut app App) vmdetail(vmid int) vweb.Result {
    return app.json("{}")    
}

fn main() {
    vweb.run(&App{}, port)
}

