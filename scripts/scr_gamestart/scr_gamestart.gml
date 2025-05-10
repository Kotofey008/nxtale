// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_gamestart(){
global.debug = 1
global.language = "en"
global.hp = 20
global.maxhp = 20
global.lv = 1
global.xp = 0
global.gold = 0
global.at = 10
global.df = 10
global.adef = 0
global.charname = "CHARA"
global.facing = 0
global.skin = 0
global.menuchoice[0] = 1
global.menuchoice[1] = 1
global.menuchoice[2] = 0
global.menuchoice[3] = 0
global.item[0] = 0
global.item[1] = 0
global.item[2] = 0
global.item[3] = 0
global.item[4] = 0
global.item[5] = 0
global.item[6] = 0
global.item[7] = 0
global.item[8] = 0
for (i = 0; i < 8; i += 1)
{
    global.item[i] = 0
    global.spell[i] = 1
    global.bulletvariable[i] = 0
    global.menuno = -1
    global.menucoord[i] = 0
    global.bmenuno = 0
    global.bmenucoord[i] = 0
}
global.wstrength = 0
global.weapon = 3
global.armor = 4
global.weapon_name = " "
global.armor_name = " "
global.kills = 0
for (i = 0; i < 640; i += 1)
    global.flag[i] = 0
for (i = 0; i < 99; i += 1)
    global.msg[i] = "%%%"
global.plot = 0

//--------WEAPON AND ARMOR NAMES--------//
// WEAPONS
if global.weapon = 3
	global.weapon_name = "Stick"

// ARMOR
if global.armor = 4
global.armor_name = "Bandage"
//--------WA END--------//

}