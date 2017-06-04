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

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_htcCommon.h"

void vendor_load_properties()
{
    char platform[PROP_VALUE_MAX];
    char bootmid[PROP_VALUE_MAX];
    char bootcid[PROP_VALUE_MAX];
    char device[PROP_VALUE_MAX];
    int rc;

    rc = property_get_sdk23("ro.board.platform", platform);
    if (!rc || strncmp(platform, ANDROID_TARGET, PROP_VALUE_MAX))
        return;

    property_get_sdk23("ro.boot.mid", bootmid);
    property_get_sdk23("ro.boot.cid", bootcid);

    if (strstr(bootmid, "2PZC10000")) {
        /* Asia / EMEA (Single SIM) - OCN_UHL */
        property_set("ro.build.product", "htc_ocnuhl");
        property_set("ro.product.model", "HTC U11");
    } else if (strstr(bootmid, "2PZC20000")) {
        /* Japan (Single SIM) - OCN_UHLJAPAN */
        property_set("ro.build.product", "htc_ocnuhljapan");
        property_set("ro.product.model", "601HT");
    } else if (strstr(bootmid, "2PZC30000")) {
        /* Asia / EMEA (Dual SIM) - OCN_DUGL */
        property_set("ro.build.product", "htc_ocndugl");
        property_set("ro.product.model", "HTC U11");
    } else if (strstr(bootmid, "2PZC40000")) {
        /* China (Dual SIM) - OCN_DTWL */
        property_set("ro.build.product", "htc_ocndtwl");
        property_set("ro.product.model", "HTC U11");
    } else if (strstr(bootmid, "2PZC50000")) {
        /* US Unlocked/Sprint (OCN_WHL) */
        property_set("ro.build.product", "htc_ocnwhl");
        if (strstr(bootcid, "SPCS_001"))
            property_set("ro.product.model", "2PZC5"); // Sprint
        else
            property_set("ro.product.model", "HTC U11"); // US Unlocked
    } else {
        /* GSM (OCN_UL) */
        property_set("ro.build.product", "htc_ocnuhl");
        property_set("ro.product.model", "HTC U11");
    }

    set_props_from_build();

    property_get_sdk23("ro.product.device", device);
    ERROR("Found bootmid %s setting build properties for %s device\n", bootmid, device);
}
