params [
    ["_ctrl", controlNull, [controlNull]],
    ["_progress", 0.0, [0.0]]
];

_progress = (_progress max 0.0) min 1.0;
_ctrl setVariable ["progress", _progress];

if (_progress == 0.0) then {
    (_ctrl getVariable "Quadrant1") getVariable "Picture" ctrlShow false;
    (_ctrl getVariable "Quadrant2") getVariable "Picture" ctrlShow false;
    (_ctrl getVariable "Quadrant3") getVariable "Picture" ctrlShow false;
    (_ctrl getVariable "Quadrant4") getVariable "Picture" ctrlShow false;
} else {
    _progress = linearConversion [0.0, 1.0, _progress, 0.0, 360.0];

    {
        _x params ["_ctrl", "_angle"];

        _ctrl ctrlShow true;
        _ctrl ctrlSetAngle [_angle, 0.5, 0.5, true];
    } forEach [
        // Control                                              Angle
        [(_ctrl getVariable "Quadrant1") getVariable "Picture", (_progress max 0.0) min 180.0],
        [(_ctrl getVariable "Quadrant2") getVariable "Picture", (_progress max 225.0) min 450.0],
        [(_ctrl getVariable "Quadrant3") getVariable "Picture", (_progress max 135.0) min 360.0],
        [(_ctrl getVariable "Quadrant4") getVariable "Picture", (_progress max 45.0) min 270.0]
    ];
};