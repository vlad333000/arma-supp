params ["_ctrl"];

[_ctrl, (ctrlPosition _ctrl) select [2, 2], 0.0] call ASUP_fnc_rscProgressBarRadial_resize;
[_ctrl, 0.0] call ASUP_fnc_rscProgressBarRadial_setProgress;