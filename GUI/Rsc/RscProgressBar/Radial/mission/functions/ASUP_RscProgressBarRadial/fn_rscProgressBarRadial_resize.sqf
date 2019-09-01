params [
    ["_ctrl", controlNull, [controlNull]],
    ["_ctrlSize", [1.0, 1.0], [[]], [2]],
    ["_ctrlCommitTime", 0.0, [0.0]]
];

(_ctrlSize) params [
    ["_w", 1.0, [0.0]],
    ["_h", 1.0, [0.0]]
];

(ctrlPosition _ctrl) params [
    "_x",
    "_y"
];

private _ctrlQuadrant1 = _ctrl getVariable "Quadrant1";
private _ctrlQuadrant2 = _ctrl getVariable "Quadrant2";
private _ctrlQuadrant3 = _ctrl getVariable "Quadrant3";
private _ctrlQuadrant4 = _ctrl getVariable "Quadrant4";

{
    _x params ["_ctrl", "_ctrlPosition"];

    _ctrl ctrlSetPosition _ctrlPosition;
    _ctrl ctrlCommit _ctrlCommitTime;
} forEach [
    // Control                              X                   Y               W       H
    [_ctrl,                                 [_x,                _y,             _w,     _h]],
    [_ctrlQuadrant1,                        [0.0 + (_w / 2),    0.0,            _w / 2, _h / 2]],
    [_ctrlQuadrant1 getVariable "Picture",  [0.0 - (_w / 2),    0.0,            _w,     _h]],
    [_ctrlQuadrant2,                        [0.0,               0.0,            _w / 2, _h / 2]],
    [_ctrlQuadrant2 getVariable "Picture",  [0.0,               0.0,            _w,     _h]],
    [_ctrlQuadrant3,                        [0.0,               0.0 + (_h / 2), _w / 2, _h / 2]],
    [_ctrlQuadrant3 getVariable "Picture",  [0.0,               0.0 - (_h / 2), _w,     _h]],
    [_ctrlQuadrant4,                        [0.0 + (_w / 2),    0.0 + (_h / 2), _w / 2, _h / 2]],
    [_ctrlQuadrant4 getVariable "Picture",  [0.0 - (_w / 2),    0.0 - (_h / 2), _w,     _h]]
];