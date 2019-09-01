params ["_ctrl"];

private _ctrlGroup = ctrlParentControlsGroup _ctrl;
private _ctrlName = ctrlClassName _ctrl;

_ctrlGroup setVariable [_ctrlName, _ctrl];