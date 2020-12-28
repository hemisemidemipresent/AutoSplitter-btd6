state("BloonsTD6"){
    int round :  0x20002CE, 0x17000B57;
    var scanTarget = new SigScanTarget(0,
        "40 53 48 83 EC 20 80 3D" // probably wrong
    );
}

init{
    print("[INIT]");
}

startup{
    print("[START]");
    
}

split{
    if(current.round == 39){
        // MOAB
        return true;
        print("MOAB");
    }else{
        print("current rnd: "+current.round.ToString());
    }
}