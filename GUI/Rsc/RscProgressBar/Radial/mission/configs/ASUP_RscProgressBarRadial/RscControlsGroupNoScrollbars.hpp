#ifndef __ASUP_RscProgressBarRadial_RscControlsGroupNoScrollbars_hpp
#define __ASUP_RscProgressBarRadial_RscControlsGroupNoScrollbars_hpp

#include "ScrollBar.hpp"
#include "RscControlsGroup.hpp"

class ASUP_RscProgressBarRadial_RscControlsGroupNoScrollbars : ASUP_RscProgressBarRadial_RscControlsGroup {
    class HScrollbar : HScrollbar {
        height = 0;
    };
    class VScrollbar : VScrollbar {
        width = 0;
    };
};

#endif