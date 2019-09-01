params [
    ["_params", [], []],
    ["_code", {}, [{}]]
];

private ["_return"];

isNil {
    _return = _params call _code;
};

_return;