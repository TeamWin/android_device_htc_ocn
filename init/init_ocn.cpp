/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/properties.h>
#include <android-base/logging.h>

#include "property_service.h"

namespace android {
namespace init {

void property_override(char const prop[], char const value[]) {
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void property_override_dual(char const system_prop[], char const vendor_prop[],
    char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

void vendor_load_properties() {
    std::string platform = android::base::GetProperty("ro.board.platform", "");
    std::string bootmid;
    std::string bootcid;
    std::string device;

    if (platform != ANDROID_TARGET)
        return;

    bootmid = android::base::GetProperty("ro.boot.mid", "");
    bootcid = android::base::GetProperty("ro.boot.cid", "");

    if (bootmid == "2PZC20000") {
        /* Japan (Single SIM) - OCN_UHLJAPAN */
        property_override_dual("ro.product.device", "ro.vendor.product.device", "htc_ocnuhljapan");
        property_override("ro.build.product", "htc_ocnuhljapan");
        property_override_dual("ro.product.model", "ro.vendor.product.model", "601HT");
    } else if (bootmid == "2PZC30000") {
        /* Asia / EMEA (Dual SIM) - OCN_DUGL */
        property_override_dual("ro.product.device", "ro.vendor.product.device", "htc_ocndugl");
        property_override("ro.build.product", "htc_ocndugl");
        property_override_dual("ro.product.model", "ro.vendor.product.model", "HTC_U-3u");
    } else if (bootmid == "2PZC40000") {
        /* China (Dual SIM) - OCN_DTWL */
        property_override_dual("ro.product.device", "ro.vendor.product.device", "htc_ocndtwl");
        property_override("ro.build.product", "htc_ocndtwl");
    } else if (bootmid == "2PZC50000") {
        /* US Unlocked/Sprint (OCN_WHL) */
        property_override_dual("ro.product.device", "ro.vendor.product.device", "htc_ocnwhl");
        property_override("ro.build.product", "htc_ocnwhl");
        if (bootcid == "SPCS_001") {
            property_override_dual("ro.product.model", "ro.vendor.product.model", "2PZC5"); // Sprint only
        }
    } else {
        /* Asia / EMEA (Single SIM) - OCN_UHL */
        property_override_dual("ro.product.device", "ro.vendor.product.device", "htc_ocnuhl");
        property_override("ro.build.product", "htc_ocnuhl");
    }

    device = android::base::GetProperty("ro.product.device", "");
    LOG(INFO) << "Found bootmid '" << bootmid.c_str() <<
        "' setting build properties for '" << device.c_str() << "' device\n";
}
}  // namespace init
} // namespace android

