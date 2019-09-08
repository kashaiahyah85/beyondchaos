FF6 Beyond Chaos EX Randomizer for RetroPie
a fork of Subractionsoup's fork of Abyssonym's FF6 Beyond Chaos Randomizer
Version:    0.1.0
Date:       September 7, 2019
URL:        https://github.com/kashaiahyah85/ff3rnd

--- QUICKSTART ---
Requirements:
    FF3 US 1.0 ROM

Installation:
'''git clone https://github.com/kashaiahyah85/ff3rnd.git
cp ff3rnd/ff3rnd.sh ./ && chmod +x ff3rnd.sh'''

Running the randomizer:
    Windows users: run beyondchaos_ex.exe (found in beyondchaos_windows.zip attached to the release).
	If you're using a version prior to Windows 10 and get an error message, try this: https://support.microsoft.com/en-us/help/2999226/update-for-universal-c-runtime-in-windows

    Other users: run "randomizer.py" using Python version 3.7+ (It DOES NOT work with python 2.)

Source ROM file:
    The randomizer will ask for a ROM file. Beyond Chaos EX does not provide this ROM. The simplest thing is to put the ROM in the same directory as Beyond Chaos EX and simply input the file name.
    e.g., "ff3.smc"
    
    If you prefer to keep the ROM in a different folder, enter the full path. e.g., "C:\Users\Kefka\Documents\snes\ff3.smc"

	The randomizer will remember the last ROM location you used, so on subsequent runs, you can just press Enter to use the same ROM as last time.

    The ROM used should be the FF3 US 1.0 ROM. Both unheadered and headered roms will work. If you use an incorrect or modified rom, the randomizer will warn you before continuing. To be sure, you can check that your rom is correct by comparing the unheadered checksum/hash:

    MD5 - e986575b98300f721ce27c180264d890
    CRC32 - a27f1c7a

Seed value:
    Next, the randomizer will ask for a seed value. The seed value is an integer number that can be used to share the same randomization with other people. If you don't know which seed you want, just leave this blank.

Mode:
    Next, it asks you to specify a game mode.
    In normal mode, you play through the story as usual.
    In ancient cave, speed cave, and race cave modes you going through a randomized three-party dungeon to defeat Kefka; they differ in the length of the dungeon.
    In K at N mode, you play through the beginning of the normal story, ending at the fight with Kefka at Narshe. The randomness is adjusted to give you a lot more variety in that section than you would see in normal mode.
    In dragon hunt mode, you start in the World of Ruin with the airship, and it ends immediately when you kill the 8th dragon.
    
    Type the name or number of the mode you want.

Flags:
    Finally, the randomizer will ask for a list of flags. These allow you to customize what it randomizes.
    
    * If this is your first seed, I recommend simply typing an exclamation mark ('!').
	
	! is the new player flags preset, and is equivalent to:
	-dfklu partyparty makeover johnnydmad
    
    This will give you a good taste of Beyond Chaos EX while leaving out a few things that can sometimes be frustrating for new players. ("partyparty" and "makeover" are "secret" codes that randomize the sprites even more. "johnnydmad" randomizes the music. You can leave them out if you want.)
    
    * If you find that too hard, try:
    -dfklmu partyparty makeover johnnydmad
    
    * The "typical" flags used by veterans are:
    -lk partyparty makeover capslockoff johnnydmad

Output rom file:
    The randomizer generates two files, a patched rom file, and a mini-FAQ. Both files will have the seed value in their name. To play the game, load the patched rom file in your emulator. The mini-FAQ is a text file that mainly includes information about where to get items; colosseum rewards, monster steals and drops, shop info, and monster rages are all included.

--- OVERVIEW ---

    Beyond Chaos EX is a randomizer, a program that remixes game content randomly, for FF6. It is a fork of Abyssonym's Beyond Chaos randomizer with even more features. Every time you run Beyond Chaos EX, it will generate a completely unique, brand-new mod of FF6 for you to challenge and explore. There are over 10 billion different possible randomizations! Nearly everything is randomized, including treasure, enemies, colors, graphics, character abilities, and more.
    Beyond Chaos EX is also customizable. Using the flags in the above section, you can choose to only randomize certain parts of the game. Every flag you select will make the game a little more random, and also a little more difficult. Therefore, even experienced players should be able to find some challenge in the resulting game. As the game progresses, enemies may become more and more difficult, so that it becomes necessary to develop specialized strategies for individual formations.

--- FAQ/KNOWN ISSUES ---
Q: How do I play Beyond Chaos Bingo?
A: The code is "bingoboingo". Use the code in the flags and the randomizer will ask you some more questions when the randomization is complete.

Q: How do I use different sprites?
A: Use the code "makeover" to randomly replace sprites. You can customize which sprites are available by checking custom/spritereplacements.txt.

Q: How do I get random music?
A: Use the code "johnnydmad" in the flags.

Q: I lost my seed number but I still have the rom. Can I find my seed number again?
A: The seed is displayed in the auto-generated guide, in the rom's SNES header, and in the opening sequence with the magitek armor.

Q: I'm at Vargas but I don't have Blitz. How do I beat him?
A: You can defeat him normally without Blitz. His HP was lowered to make him beatable without much (if any) grinding.

Q: How do I defeat TunnelArmr without Runic?
A: Just kill it.

Q: How do I defeat Ultros at the Esper's hideout without Sketch?
A: Just kill it. (If you happen to have another way to use Tentacle on him, that'll work too.)

Q: Speaking of Sketch, was the Sketch Glitch patched?
A: No. Believe it or not, there are people out there who want to play using the Sketch Glitch, which is why the randomizer is based off of the FF3 US 1.0 rom. In an ideal world you would be able to choose whether or not to patch the glitch, but since there is such small demand for that kind of feature and it would take considerable effort, I haven't implemented it.

Q: The Moogle Charm doesn't work.
A: It was nerfed. FF6 uses a threat level based random encounter system, and Moogle Charm increases threat level by the lowest possible value without removing encounters altogether. The specifics are a bit complex, but you should think of it as having about a 1/256 encounter rate if you've been wearing it for a while. Also, some later dungeons might randomly ignore Moogle Charm altogether.

Q: I'm in a dungeon and the encounter rate is insanely high.
A: Some later dungeons have a chance to become high encounter rate dungeons. However, these dungeons are twice as vulnerable to the effects of Charm Bangle and Moogle Charm.

Q: The switches in the final dungeon don't seem to be working.
A: They work, I assure you... it seems like the game is a bit buggy when there are parties standing on multiple switches and one of the parties is standing on a switch it doesn't expect. Try moving everyone else off of any switches or in the worst case have them leave the room entirely.

Q: The Fanatics Tower is really long. What gives?
A: I've made some changes to the Tower, with the intent to make it the most frustrating, obnoxious dungeon possible. If you're stuck, here are some hints in ROT13 format. Decode them if you're having trouble.
    Hint #1:  Vg'f zber qvssvphyg tbvat hc guna pbzvat qbja.
    Hint #2:  Qba'g trg qvfgenpgrq. Fgnl sbphfrq ba lbhe tbny, naq riraghnyyl lbh jvyy ernpu vg.
    Solution: Fbzr gernfher ebbzf ner gencf gung qebc lbh gb n ybjre yriry bs gur gbjre. Nibvq gur gernfher ebbzf naq lbh jba'g trg fghpx.

Q: The old man in Narshe won't give me the Ragnarok esper. Is this a bug?
A: It's not a bug. Ragnarok (esper) is at a different location. Location: Gur obff ng gur gbc bs Snangvpf Gbjre unf vg.

Q: I heard that there's a secret item. How do I get it?
A: Va gur svany qhatrba, gurer'f n fznyy vagrevbe ebbz jvgu n qbbe cnfg n pbairlbe oryg gung vf vanpprffvoyr. Gb ernpu gur qbbe, lbh zhfg hfr na rkcybvg gung vf abeznyyl hfrq gb fxvc Cbygetrvfg va inavyyn SS6. Ybbx hc gur Cbygetrvfg fxvc gb svaq bhg ubj gb qb gur gevpx.

Q: I heard that there are secret codes. What are they?
A: Secret codes can be entered when the randomizer asks you for flags. They can do everything from make silly cosmetic changes to major gameplay changes. Mostly they're secret because it's recommended you play through the randomizer at least once without them before using them.
Here are a few that ARE okay to use on your first time:

    * capslockoff - Character names will not be in all-caps by default
    * partyparty - a super version of the s flag. This also randomizes the sprites for Kefka, the soldiers, merchants, Esper Terra, Imp, Banon, and Leo.
    * makeover - replaces (most) sprites with ones not in the original game, such as Samus or Rydia.
    * johnnydmad - replaces the music tracks with tracks not in the original game. For example, you might hear music from Secret of Mana or Tales of Phantasia.
    * notawaiter - skips some of the cutscenes. It skips all of the ones through Kefka @ Narshe, and a few of the longer ones after that.
	* alasdraco - randomizes the sprites, voices, and a few other things in the opera

If you want to customize the sprites chosen by the makeover code, there are a few options:
    * novanilla - no characters will have sprites chosen from the vanilla game.
	* frenchvanilla - sprites from the vanilla game can be chosen, but with equal probability to new sprites. (Makeover normally forces a few vanilla sprites to be included.)
	* cloneparty - Allows, and even encourages, multiple versions of the same character to be selected. For example, one character might look like kid Rydia and another like adult Rydia. Or three characters could be three different versions of Garnet: in her normal outfit, in a gown, or dressed as a white mage.
	
    The following codes use tags. Sprites are tagged with certain categories, and these codes alter the chance of selecting sprites in those categories. Replace "<tag>" with one of the valid tags. Valid tags are: boys, girls, kids, pets, and potato (i.e., inanimate objects or otherwise very silly sprites). If you exclude too many sprites from the pool, sprites from the vanilla game will fill in the rest.
	* no<tag> - e.g., noboys, excludes sprites with the given tag from being selected.
	* hate<tag> - e.g., hatepotato, makes sprites with the given tag less likely to appear.
	* like<tag> - e.g., likepets, makes sprites with the given tag more likely to appear.
	* love<tag> - e.g. lovekids, allows ONLY sprites with the given tag to be selected. If you use more than one "love" code, sprites with AT LEAST ONE of those tags will be allowed.
	
After your first time, if you want an extra challenge (believe it or not, some people do):
	* dancingmaduin -  this makes it so each esper can only be equipped certain randomly selected characters.

The rest are here, in ROT13, but—again—it's recommended that you play through the randomizer without codes at least once before you use them:
    nvefuvc
    oenirahqrjbeyq
    fhcyrkjerpxf
    fgenatrwbhearl
    qrnerfgzbyhyh
    pnaggbhpuguvf
    rnflzbqb
    abeat
    raqyrff9
    rdhvcnalguvat
    pbyyngrenyqnzntr
    yyt
    anghenyzntvp
    anghenyfgngf
    cynlfvgfrys
    jbeevatgevnq
    zrgebabzr
    dhvxqenj
    xhcbxhcb
    ercynprrirelguvat
    nyypbzobf
    enaqbzobbfg
    znffrssrpg
    fhcreangheny
    znqjbeyq
    ryrpgevpobbtnybb
    abgnjnvgre
    qnexjbeyq
    enaqbzobffrf
    wbuaalnpunbgvp
	gurfpranevbabggnxra

Q: What level should I be for the final dungeon?
A: It really depends on your gear and what builds you have access to. I usually end up going there around level 35-40, but it doesn't hurt to have a few absurdly high level characters to tank hits.

Q: Yo this is really hard.
A: Yeah I guess so. I was pretty careful to make sure it was always beatable, though. Obviously the difficulty depends on your specific randomization though, so if you're having trouble, don't feel bad about using savestates or anything. I tried to design the randomizer in such a way that savestates aren't necessary, but I can't account for everything. If you encounter anything that is absolutely absurd in difficulty, please let me know so I can try to adjust the balance for future versions. Also, save often! You never know when you'll randomly encounter a boss on the overworld or in a chest.

Q: I encountered <boss> as a random encounter/monster in a box! Is this a bug?
A: No.

Q: I can't choose my party for the final battle. Is this a bug?
A: No.

Q: I used Control on an enemy and ordered him to use a skill on his own party, but he attacked me instead!
A: Some skills are just like that. They're flagged to never be used on your own party.

Q: The final boss is impossible! How do I win?
A: Gur orfg cerpnhgvba lbh pna gnxr vf univat rabhtu UC gb fheivir Zrgrbe (hfhnyyl nobhg 5000) naq vaihyarenovyvgl gb znal fgnghf rssrpgf, rfcrpvnyyl Fvyrapr. Xrsxn jba'g pbhagre juvyr ur'f pnfgvat Tbare naq gur fperra vf funxvat, fb guvf vf gur orfg gvzr gb fgevxr.

Q: The boss of the Fanatics Tower is impossible! How do I win without Life 3?
A: Gur pynffvp fgengrtl bs Enfcvat uvz gb qrngu fgvyy jbexf, naq ur vf bsgra ihyarenoyr gb Ofrex. Hfvat Cnyvqbe gb ynaq gur svany uvg pna jbex, ohg or jnel gung ur zvtug fgneg gur onggyr jvgu vaangr Yvsr 3. Nyfb, vs lbh unir n Trz Obk be fvzvyne vgrz, vg zvtug nyybj lbh gb hfr na novyvgl va gur gbjre gung lbh abeznyyl pna'g hfr... Hygvzn pna or Ehavpxrq, sbe rknzcyr.

Q: Dude I've got like six cursed shields.
A: Fun fact, if you equip cursed shields on multiple party members, you can uncurse one of them 2x or 3x or 4x as quickly.

Q: I just got a Game Over, but I didn't get to keep my experience levels.
A: This feature was removed because it didn't work properly with one of the new esper boosts. I also wasn't very fond of it to begin with, because I would often get a Game Over and forget to reset so I don't miss out on valuable esper levels.

Q: My berserker who uses Rage did a slam attack and it did a whole bunch of damage/somehow killed someone on my team.
A: That's a bug. For some reason when he has the Rage status, the slam attack gets the properties of the Fire spell but with a super high Magic Power. If the enemy has Reflect, it'll hit your team. Hopefully you have equipment that absorbs or nullifies fire.

Q: Can you add X to the mini-guide that gets generated?
A: Let me know. I'm not sure what kinds of things people want in the mini-FAQ.

Q: Can you add X feature?
A: Maybe. I'm open to suggestions, but things that require a lot of effort probably won't get made.

Q: Can I add X feature?
A: Possibly! Even if I don't think it's a good idea for the standard settings, it could be a secret code. Send me a pull request to the project's Github.

Q: Does Beyond Chaos EX work with X mod?
A: Probably not, especially if the mod makes large changes. But try Beyond Chaos Gaiden, which does work with Brave New World.

Q: Does Beyond Chaos EX work on a real Super Nintendo?
A: Absolutely! Beyond Chaos has been tested on both Super Everdrive and SD2SNES, and it works 100% perfectly.

Q: I found a bug!
A: The best way to report it is on the Beyond Chaos Discord in the #bugs channel. Please include the seed number and flags used. (The easiest way is to copy and paste the first line of the .txt file.)

--- CONTRIBUTORS ---
    Abyssonym - original Beyond Chaos creator
    subtractionsoup - maintainer of Beyond Chaos EX
    CtrlxZ - created or modified a bunch of sprites for the randomizer
    DarkSlash - madworld, darkworld, randombosses codes and some other things for KatN mode.
    emberling - speeddial, randomized music, converted a ton of music, and reworked palettes and sprite replacement
    glennmatthews - Command descriptions in logfile
    Lockirby2 - The worringtriad and notawaiter codes
    myself086 - new menu features and natural magic expansion

--- SPECIAL THANKS ---
    cecil188 - OG beyond chaos fan
    fathlo23 - RPG speedrunner and BC challenge runner
    ffmasterfoobar - twitch broadcaster who did a lot of initial playtesting for my entertainment
    greenknight5 - bc_cecilbot programmer
    kupofasa - original permadeath runner
    quikdraw7777 - permadeath community leader and pioneer
    tenkarider - romhacker who gave me lots of early feedback, and creator of the Ultimate Czar Dragon hack, FF6 Curse of the Gods, and many other challenges
    Synchysi - esper restriction patch
	Lenophis - unhardcoded tintinabar patch
    Novalia Spirit - "Allergic Dog" bug fix patch
    Leet Sketcher - Y Equip Relics patch
    Assassin - That Damn Yellow Streak fix patch
	Power Panda - Divergent Paths: The 3 Scenarios
    ff6hacking.com community - additional sprites, see custom/sprites/credits.txt for details
    AND YOU

--- SPECIAL NO THANKS ---
    Mitch McConnell
