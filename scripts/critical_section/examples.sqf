// Example 1 - Using header

// Replace with your path to "header.sqf" file in this folder
#include "header.sqf"

critical_begin();
    array = array = apply { _x ^ 2; };
critical_end();

// Example 2 - Uasing function

// // Define function "function.sqf" in cfgFunction:
// class CfgFunctions {
//     class MyTag {
//         class Misc {
//             class criticalCode {
//                 // Replace with your path to "function.sqf" file in this folder
//                 file = "function.sqf";
//             };
//         };
//     };
// };
// // or in script:
// // Replace with your path to "function.sqf" file in this folder
// MyTag_fnc_criticalCode = compileFinal preprocessFileLineNumbers "function.sqf";

[array, { { array set [_forEachIndex, _x ^ 2]; } forEach array; }] call MyTag_fnc_criticalCode;

[[1, 2, 3], BIS_fnc_log] call MyTag_fnc_criticalCode;