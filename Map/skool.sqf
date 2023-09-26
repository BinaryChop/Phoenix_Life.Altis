[] spawn
{
_pos = [3261.870361,12427.294922,1.34717];
n1 = createVehicle ["Land_Notepad_F", _pos, [], 0, "CAN_COLLIDE"];
n1 setDir 33.6056;
n1 setPosATL _pos;

_pos = [3271.722656,12422.0986328,4.87077];
micro = createVehicle ["Land_Microwave_01_F", _pos, [], 0, "CAN_COLLIDE"];
micro setDir 163.604;
micro setPosATL _pos;

_pos = [3262.228027,12427.643555,1.34235];
lap1 = createVehicle ["Land_Laptop_unfolded_F", _pos, [], 0,"CAN_COLLIDE"];
lap1 setDir 288.005;
lap1 setPosATL _pos;
lap1 attachTo [z2_1,[0.2,0.13,0.56]]; lap1 setDir -10;

_pos = [3262.149414,12427.143555,1.34459];
pens = createVehicle ["Land_PensAndPencils_F", _pos, [], 0, "CAN_COLLIDE"];
pens setDir 287.482;
pens setPosATL _pos;
pens attachTo [z2_1,[-0.5,0.13,0.43]]; pens setDir 10;


_pos = [3259.214355,12426.74707,1.34837];
lap2 = createVehicle ["Land_Laptop_unfolded_F", _pos, [], 0, "CAN_COLLIDE"];
lap2 setDir 43.6055;
lap2 setPosATL _pos;
lap2 attachTo [z4_1,[-0.1,0.1,0.56]]; lap2 setDir 10;

_pos = [3271.139648,12430.762695,1.34106];
sph = createVehicle ["Land_MobilePhone_smart_F", _pos, [], 0, "CAN_COLLIDE"];
sph setDir 173.605;
sph setPosATL _pos;
sph attachTo [b2,[0,0.25,0.42]];

_pos = [3259.083252,12426.916992,4.64911];
lap3 = createVehicle ["Land_Laptop_F", _pos, [], 0, "CAN_COLLIDE"];
lap3 setDir 63.6055;
lap3 setPosATL _pos;
lap3 attachTo [z1_1,[0,0.0,0.43]];

_pos = [3266.381104,12443.9375,0.000333309];
_object = createVehicle ["Land_Grave_obelisk_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 344;
_object setPosATL _pos;

_pos = [3243.17749,12430.327148,-0.0105615];
_object = createVehicle ["Land_Slide_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 264.905;
_object setPosATL _pos;

_pos = [3258.489502,12467.963867,-0.712111];
_object = createVehicle ["Land_i_Addon_03mid_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 78.9998;
_object setPosATL _pos;


_pos = [3258.489502,12424.467773,0.527258];
_object = createVehicle ["Land_OfficeCabinet_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 163.057;
_object setPosATL _pos;

_pos = [3282.210449,12434.917969,-0.0225477];
l1 = createVehicle ["Land_LampHarbour_F", _pos, [], 0, "CAN_COLLIDE"];
l1 setDir 0;
l1 setPosATL _pos;

_pos = [3285.735596,12425.75293,0.0213909];
l2 = createVehicle ["Land_LampHarbour_F", _pos, [], 0, "CAN_COLLIDE"];
l2 setDir 70;
l2 setPosATL _pos;

_pos = [3264.870605,12431.209961,0];
l3 = createVehicle ["Land_LampHarbour_F", _pos, [], 0, "CAN_COLLIDE"];
l3 setDir 0;
l3 setPosATL _pos;

_pos = [3281.517822,12477.482422,0.102227];
shed = createVehicle ["Land_Shed_Small_F", _pos, [], 0, "CAN_COLLIDE"];
shed setDir 165;
shed setPosATL _pos;


_pos = [3268.779053,12433.707031,-0.0156889];
_object = createVehicle ["Land_Bench_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 163.499;
_object setPosATL _pos;


_pos = [3276.874512,12433.876953,0.0145907];
_object = createVehicle ["Land_Bench_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 164.792;
_object setPosATL _pos;




_pos = [3290.995605,12463.806641,-0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,12,-2.16]];
_object setDir 90;

_pos = [3290.995605,12463.806641,-0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,4,-2.16]];
_object setDir 90;

_pos = [3290.995605,12463.806641,-0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,-4,-2.16]];
_object setDir 90;

_pos = [3290.995605,12463.806641,-0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,-12,-2.16]];
_object setDir 90;

_pos = [3290.995605,12463.806641,0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,7.5,-2.16]];
_object setDir 90;

_pos = [3290.995605,12463.806641,0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,-7.5,-2.16]];
_object setDir 90;

_pos = [3292.806885,12435.938477,-0.209906];
bas = createVehicle ["Land_BC_Court_F", _pos, [], 0, "CAN_COLLIDE"];
bas setDir 343.997;
bas setPosATL _pos;
_pos = [3289.127197,12448.603516,-0.137841];
bas1 = createVehicle ["Land_BC_Basket_F", _pos, [], 0, "CAN_COLLIDE"];
bas1 setDir 163.595;
bas1 setPosATL _pos;
bas1 attachTo [bas,[0,-13.4,2.8]];
_pos = [3289.127197,12448.603516,-0.137841];
bas2 = createVehicle ["Land_BC_Basket_F", _pos, [], 0, "CAN_COLLIDE"];
bas2 setDir 163.595;
bas2 setPosATL _pos;
bas2 attachTo [bas,[0,13.4,2.8]];
bas2 setDir 180;

_pos = [3290.995605,12463.806641,0.00640345];
_object = createVehicle ["Land_Obstacle_Saddle_F", _pos, [], 0, "CAN_COLLIDE"];
_object attachTo [shed,[0,0,-2.16]];
_object setDir 90;


_pos = [3253.978271,12468.227539,-0.106453];
_object = createVehicle ["Land_GarbageContainer_closed_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 257.905;
_object setPosATL _pos;


_pos = [3254.512695,12466.318359,0.215808];
_object = createVehicle ["Land_GarbageContainer_open_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 257.873;
_object setPosATL _pos;


_pos = [3241.453369,12491.428711,0.582651];
t1 = createVehicle ["Land_Billboard_F", _pos, [], 0, "CAN_COLLIDE"];
t1 setDir 220;
t1 setPosATL _pos;

_pos = [3281.448486,12433.34375,0.483473];
z1_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z1_2 setDir 34.7933;
z1_2 setPosATL _pos;


_pos = [3271.538086,12422.129883,3.83347];
_object = createVehicle ["Land_ShelvesWooden_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 254.786;
_object setPosATL _pos;

_pos = [3269.523682,12421.647461,3.85117];
_object = createVehicle ["Fridge_01_closed_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 164.793;
_object setPosATL _pos;

_pos = [3277.86792,12424.0742188,0.511836];
z2_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z2_2 setDir 210.394;
z2_2 setPosATL _pos;

_pos = [3263.235596,12420.100586,0.595355];
z3_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z3_2 setDir 210.387;
z3_2 setPosATL _pos;

_pos = [3264.25708,12426.00878906,0.560972];
_object = createVehicle ["Land_OfficeCabinet_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 164.793;
_object setPosATL _pos;

_pos = [3266.127686,12429.0927734,0.578791];
z4_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z4_2 setDir 50.6393;
z4_2 setPosATL _pos;

_pos = [3254.926025,12426.392578,0.587795];
z5_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z5_2 setDir 300.602;
z5_2 setPosATL _pos;

_pos = [3254.926025,12426.392578,3.86843];
z6_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z6_2 setDir 300.602;
z6_2 setPosATL _pos;

_pos = [3263.241943,12420.0654297,3.59596];
z7_2 = createVehicle ["Land_MapBoard_F", _pos, [], 0, "CAN_COLLIDE"];
z7_2 setDir 210.62;
z7_2 setPosATL _pos;

b1 attachTo[k1,[-2.5,-3.4,0.5]];
b2 attachTo[b1,[0,-1,0.43]];

z1 attachTo[k1,[-7.5,-4,0.5]];
z1 setDir 122;
z1_1 attachTo[z1,[0,-1,0.43]];

z2 attachTo[k1,[-13.1,4,0.5]];
 z2 setDir -50;
z2_1 attachTo[z2,[0,-1,0.43]];

z3 attachTo[k1,[7.6,-4,0.5]];
 z3 setDir 122;
z3_1 attachTo[z3,[0,-1,0.43]];

z4 attachTo[k1,[2.5,1.8,0.5]];
z4 setDir 220;
z4_1 attachTo[z4,[0,-1,0.43]];

z5 attachTo[k1,[9.1,-3.8,0.5]];
z5 setDir -122;
z5_1 attachTo[z5,[0,-1,0.43]];

z6 attachTo[k1,[9.1,-3.8,3.8]];
z6 setDir -122;
z6_1 attachTo[z6,[0,-1,0.43]];

z7 attachTo[k1,[2.5,1.8,3.8]];
z7 setDir 220;
z7_1 attachTo[z7,[0,-1,0.43]];

};

