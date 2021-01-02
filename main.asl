
state("BloonsTD6"){
    int tempvar : 0x0, 0x0
}

init{
    print("[INIT]");
}

startup{
    print("[START]");
    vars.round = 0;
}

split{

    string path = @"round.txt";
    string text = File.ReadAllText(path);
    int round = Int32.Parse(text);

    if (round == 40 &&vars.round!=40) {
        vars.round = round;
        return true;
    }
    if (round == 60 &&vars.round!=60) {
        vars.round = round;
        return true;
    }if (round == 80 &&vars.round!=80) {
        vars.round = round;
        return true;
    }if (round == 100 &&vars.round!=100) {
        vars.round = round;
        return true;
    }
    else {
        
    vars.round = round;
    //print(vars.round.ToString());
    }

       
}