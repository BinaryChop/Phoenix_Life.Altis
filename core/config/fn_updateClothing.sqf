/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/


///Uniform
////////////////

if (playerSide == independent) then
{
	[] spawn    
		{
			while {true} do
			{
				waitUntil {uniform player == "U_Rangemaster"};
				[[player,"icons\images\notarzt\Uniform\medic_uniform2.paa"],  "life_fnc_setUniform", true, true] spawn life_fnc_MP;
				waitUntil {uniform player != "U_Rangemaster"};
			};
		};

		//[] spawn    
		//{
		//	while {true} do
		//	{
		//		waitUntil {uniform player == "B_Kitbag_cbr"};
		//		[[player,"icons\images\notarzt\Uniform\medic_backpack.jpg"], "life_fnc_setUniform", true, true] spawn life_fnc_MP;
		//		waitUntil {uniform player != "B_Kitbag_cbr"};
		//	};
		//};
		
};