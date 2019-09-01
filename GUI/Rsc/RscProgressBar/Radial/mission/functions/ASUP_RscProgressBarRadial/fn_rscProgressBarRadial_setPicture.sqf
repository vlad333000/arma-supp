params [
    ["_ctrl", controlNull, [controlNull]],
    ["_picture", "\ASUP\rscProgressBarRadial\data\line_1a_ca.paa", [""]]
];

{
    _x params ["_ctrl"];

    _ctrl ctrlSetText _picture;
} forEach [
    // Control
    (_ctrl getVariable "Quadrant1") getVariable "Picture",
    (_ctrl getVariable "Quadrant2") getVariable "Picture",
    (_ctrl getVariable "Quadrant3") getVariable "Picture",
    (_ctrl getVariable "Quadrant4") getVariable "Picture"
];
