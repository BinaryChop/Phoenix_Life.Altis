/*
	File: fn_hoergeraet.sqf
	Auhtor: waldemar Habibi
	
	Description:
	Fades out sound.
*/
life_fadeSound = !life_fadeSound;

if(life_inv_hoergeraet > 0) then
{
	if (life_fadeSound) then 
	{
		1 fadeSound 0.2; // Faded to 10%
		titleText ["Durch das Hörgerät hörst du nur noch 20% der Umgebungsgeräusche.", "PLAIN"];
	} else {
		1 fadeSound 1; // Returned to 100%
		titleText ["Die Lautstärke ist wieder normal.", "PLAIN"];
	};
}else{
	hint "Du hast kein Hörgerät. Kauf dir eines beim Markt.";
};