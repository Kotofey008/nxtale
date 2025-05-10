if talking = 1
{
    if progressive = 1
    {
        script_execute(scr_diabox, "TALK", "It's a poster about the new Grillby's.", "'" + "Grillby's 2 opens its doors for you! Get yourself a drink in one of the newest", "and hottest pubs in the town!" + "'", "", "", "", "", "", "", "", 12, 1)
        startedt1 = 1
    }
    if progressive = 2
    {
        script_execute(scr_diabox, "TALK", "", "", "", "", "", "", "", "", "", "", 12, 1)
        startedt2 = 1
    }
}
