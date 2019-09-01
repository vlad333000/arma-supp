params [];

if (!hasInterface) exitWith { -1; };

addMissionEventHandler [
    "Draw3D",
    {
        switch (cameraView) do {
            case "INTERNAL" : {
                // Nothing need
            };
            case "EXTERNAL" : {
                if (cameraOn isKindOf "Man") then {
                    cameraOn switchCamera "INTERNAL";
                };
            };
            case "GUNNER" : {
                // Nothing need
            };
            case "GROUP" : {
                cameraOn switchCamera "INTERNAL";
            };
        };
    }
];