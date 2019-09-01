params [
    ["_ctrl", controlNull, [controlNull]],
    ["_color", [1.0, 1.0, 1.0, 1.0], [[]], [3, 4]]
];

_color params [
    ["_r", 1.0, [0.0]],
    ["_g", 1.0, [0.0]],
    ["_b", 1.0, [0.0]],
    ["_a", 1.0, [0.0]]
];

{
    _x params ["_ctrl"];

    _ctrl ctrlSetTextColor [_r, _g, _b, _a];
} forEach [
    // Control
    (_ctrl getVariable "Quadrant1") getVariable "Picture",
    (_ctrl getVariable "Quadrant2") getVariable "Picture",
    (_ctrl getVariable "Quadrant3") getVariable "Picture",
    (_ctrl getVariable "Quadrant4") getVariable "Picture"
];
