#define critical_begin() call { private ["_return"]; isNil { _return = call {
#define critical_end() }; }; _return; };