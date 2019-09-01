#ifndef __ASUP_RscProgressBarRadial_RscProgressBarRadial_hpp
#define __ASUP_RscProgressBarRadial_RscProgressBarRadial_hpp

#include "RscControlsGroupNoScrollbars.hpp"
#include "RscPicture.hpp"


class ASUP_RscProgressBarRadial : ASUP_RscProgressBarRadial_RscControlsGroupNoScrollbars {
    onLoad = "_this call ASUP_fnc_rscProgressBarRadial_onLoad";

    class ASUP_RscQuadrant : ASUP_RscProgressBarRadial_RscControlsGroupNoScrollbars {
        onLoad = "_this call ASUP_fnc_rscProgressBarRadial_any_onLoad";

        class Controls {
            class Picture : ASUP_RscProgressBarRadial_RscPicture {
                onLoad = "_this call ASUP_fnc_rscProgressBarRadial_any_onLoad";

                text = "data\ASUP_RscProgressBarRadial\line_1a_ca.paa";
                color[] = { 1.0, 1.0, 1.0, 1.0 };
            };
        };
    };

    class Controls {
        class Quadrant1 : ASUP_RscQuadrant {};
        class Quadrant2 : ASUP_RscQuadrant {};
        class Quadrant3 : ASUP_RscQuadrant {};
        class Quadrant4 : ASUP_RscQuadrant {};
    };
};

#endif