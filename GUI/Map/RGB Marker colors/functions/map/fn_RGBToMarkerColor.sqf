params [
    ["_color", [1.0, 1.0, 1.0], [[]], [3, 4]]
];

_color params [
    ["_colorR", 1.0, [0.0]],
    ["_colorG", 1.0, [0.0]],
    ["_colorB", 1.0, [0.0]]
];

_colorR = round (((_colorR max 0.0) min 1.0) * 10.0);
_colorG = round (((_colorG max 0.0) min 1.0) * 10.0);
_colorB = round (((_colorB max 0.0) min 1.0) * 10.0);

format [
    "ASUP_RGB_%1_%2_%3",
    ["0" + str _colorR, "10"] select (_colorR == 10),
    ["0" + str _colorG, "10"] select (_colorG == 10),
    ["0" + str _colorB, "10"] select (_colorB == 10)
];