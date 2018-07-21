.class public final Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;
.super Ljava/lang/Object;
.source "LGMDMDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LG_USES_POLICY_AUTO_RESTORE:I = 0x25

.field public static final LG_USES_POLICY_BACKUP_RESTORE:I = 0x1a

.field public static final LG_USES_POLICY_CERTIFICATION:I = 0x6

.field public static final LG_USES_POLICY_CHANGE_SYSTEM_TIME:I = 0x2a

.field public static final LG_USES_POLICY_CONTROL_APN:I = 0x1e

.field public static final LG_USES_POLICY_CONTROL_APP_FORCE:I = 0x1b

.field public static final LG_USES_POLICY_CONTROL_CC_MODE:I = 0x31

.field public static final LG_USES_POLICY_CONTROL_DEVICE_POWER:I = 0x26

.field public static final LG_USES_POLICY_DATAUSAGE_SETTING:I = 0x2c

.field public static final LG_USES_POLICY_DEVELOPER_MODE:I = 0x2e

.field public static final LG_USES_POLICY_DISABLE_ACCOUNTS:I = 0x20

.field public static final LG_USES_POLICY_DISABLE_AIRPLANEMODE:I = 0x19

.field public static final LG_USES_POLICY_DISABLE_APPLICATION:I = 0x2

.field public static final LG_USES_POLICY_DISABLE_AUDIOPORT:I = 0x2b

.field public static final LG_USES_POLICY_DISABLE_BLUETOOTH:I = 0xf

.field public static final LG_USES_POLICY_DISABLE_BROWSER:I = 0x4

.field public static final LG_USES_POLICY_DISABLE_CLIPBOARD:I = 0x1f

.field public static final LG_USES_POLICY_DISABLE_CONSUMER_EMAIL:I = 0x9

.field public static final LG_USES_POLICY_DISABLE_DATA_ROAMING:I = 0xd

.field public static final LG_USES_POLICY_DISABLE_DUAL_WINDOW:I = 0x32

.field public static final LG_USES_POLICY_DISABLE_ERROR_REPORT:I = 0x29

.field public static final LG_USES_POLICY_DISABLE_EXTERNAL_MEMORY:I = 0x11

.field public static final LG_USES_POLICY_DISABLE_GPS:I = 0x14

.field public static final LG_USES_POLICY_DISABLE_INSTALL_APPLICATION:I = 0x2

.field public static final LG_USES_POLICY_DISABLE_IR_PORT:I = 0x30

.field public static final LG_USES_POLICY_DISABLE_MESSAGING:I = 0x5

.field public static final LG_USES_POLICY_DISABLE_MICROPHONE:I = 0x17

.field public static final LG_USES_POLICY_DISABLE_MOBILE_DATA:I = 0xe

.field public static final LG_USES_POLICY_DISABLE_MULTIUSER:I = 0x27

.field public static final LG_USES_POLICY_DISABLE_NETWORK_LOCATION_INFO:I = 0x16

.field public static final LG_USES_POLICY_DISABLE_NFC:I = 0x18

.field public static final LG_USES_POLICY_DISABLE_PASSWORD_TYPING_VISIBLE:I = 0x21

.field public static final LG_USES_POLICY_DISABLE_PIM_INFO_ACCESS:I = 0x2d

.field public static final LG_USES_POLICY_DISABLE_POPIMAP_EMAIL:I = 0xa

.field public static final LG_USES_POLICY_DISABLE_POWER_OFF:I = 0x36

.field public static final LG_USES_POLICY_DISABLE_QUICKCIRCLE:I = 0x33

.field public static final LG_USES_POLICY_DISABLE_SAFE_MODE:I = 0x35

.field public static final LG_USES_POLICY_DISABLE_SCREEN_CAPTURE:I = 0x15

.field public static final LG_USES_POLICY_DISABLE_SHORTCUT_KEY:I = 0x34

.field public static final LG_USES_POLICY_DISABLE_TETHERING:I = 0x10

.field public static final LG_USES_POLICY_DISABLE_UNINSTALL_APPLICATION:I = 0x2

.field public static final LG_USES_POLICY_DISABLE_USB:I = 0x13

.field public static final LG_USES_POLICY_DISABLE_WIFI:I = 0x12

.field public static final LG_USES_POLICY_ENFORCE_AIRPLANEMODE:I = 0x2f

.field public static final LG_USES_POLICY_GETS_DATAUSAGE_INFO:I = 0x1d

.field public static final LG_USES_POLICY_GOOGLE_BACKUP:I = 0x24

.field public static final LG_USES_POLICY_INSTALL_APPLICATION_ADMIN:I = 0x0

.field public static final LG_USES_POLICY_KEEP_TURNON_DEVICE:I = 0x1c

.field public static final LG_USES_POLICY_MANUAL_SYNC_ROAMING:I = 0xb

.field public static final LG_USES_POLICY_OWNERINFO:I = 0x28

.field public static final LG_USES_POLICY_PREVENT_OUTGOING_CALLS:I = 0x23

.field public static final LG_USES_POLICY_PREVENT_REMOVE_DEVICE_ADMIN:I = 0x1

.field public static final LG_USES_POLICY_PREVENT_SWIPING_THE_STATUS_BAR:I = 0x22

.field public static final LG_USES_POLICY_SETS_EMAIL:I = 0xc

.field public static final LG_USES_POLICY_SET_RUNTIME_PERMISSION:I = 0x38

.field public static final LG_USES_POLICY_START:I = 0x0

.field public static final LG_USES_POLICY_UNINSTALL_APPLICATION_ADMIN:I = 0x0

.field public static final LG_USES_POLICY_USE_INTEGRITY_SERVICE:I = 0x37

.field public static final LG_USES_POLICY_VPN_CONFIGURATION:I = 0x7

.field public static final LG_USES_POLICY_WIFI_CONFIGURATION:I = 0x8

.field public static final LG_USES_POLICY_WIPE_APPLICATION_DATA:I = 0x3

.field static final TAG:Ljava/lang/String; = "LGMDMDeviceAdminInfo"

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mMDMUsesPolicies:J

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mUsesPolicies:J

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/16 v11, 0x11

    const/16 v10, 0x10

    const/16 v9, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 214
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 217
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 218
    const-string/jumbo v4, "lg-install-app"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_install_app_NORMAL:I

    .line 219
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_install_app_NORMAL:I

    .line 217
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 221
    const-string/jumbo v4, "lg-uninstall-app"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_uninstall_app_NORMAL:I

    .line 222
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_uninstall_app_NORMAL:I

    .line 220
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 224
    const-string/jumbo v4, "lg-prevent-admin"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_remove_admin_NORMAL:I

    .line 225
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_remove_admin_NORMAL:I

    .line 223
    const/4 v7, 0x1

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 227
    const-string/jumbo v4, "lg-disable-app"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_app_NORMAL:I

    .line 228
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_app_NORMAL:I

    .line 226
    invoke-direct {v3, v8, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 230
    const-string/jumbo v4, "lg-disable-install-app"

    .line 231
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_install_app_NORMAL:I

    .line 232
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_install_app_NORMAL:I

    .line 229
    invoke-direct {v3, v8, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 234
    const-string/jumbo v4, "lg-disable-uninstall-app"

    .line 235
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_uninstall_app_NORMAL:I

    .line 236
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_uninstall_app_NORMAL:I

    .line 233
    invoke-direct {v3, v8, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 238
    const-string/jumbo v4, "lg-wipe-app-data"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_wipe_appdata_NORMAL:I

    .line 239
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_wipe_appdata_NORMAL:I

    .line 237
    const/4 v7, 0x3

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 241
    const-string/jumbo v4, "lg-disable-browser"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_browser_NORMAL:I

    .line 242
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_browser_NORMAL:I

    .line 240
    const/4 v7, 0x4

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 244
    const-string/jumbo v4, "lg-disable-messaging"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_message_NORMAL:I

    .line 245
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_message_NORMAL:I

    .line 243
    const/4 v7, 0x5

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 247
    const-string/jumbo v4, "lg-set-certification"

    .line 248
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_certification_NORMAL:I

    .line 249
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_certification_NORMAL:I

    .line 246
    const/4 v7, 0x6

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-vpn-config"

    .line 251
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_VPN_config_NORMAL:I

    .line 252
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_VPN_config_NORMAL:I

    .line 250
    const/4 v7, 0x7

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 254
    const-string/jumbo v4, "lg-wifi-config"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_WiFi_config_NORMAL:I

    .line 255
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_WiFi_config_NORMAL:I

    .line 253
    const/16 v7, 0x8

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 257
    const-string/jumbo v4, "lg-disable-consumer-email"

    .line 258
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_consumer_email_NORMAL:I

    .line 259
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_consumer_email_NORMAL:I

    .line 256
    const/16 v7, 0x9

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 261
    const-string/jumbo v4, "lg-disable-popimap-email"

    .line 262
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_popimap_email_NORMAL:I

    .line 263
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_popimap_email_NORMAL:I

    .line 260
    const/16 v7, 0xa

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 265
    const-string/jumbo v4, "lg-manual-sync-roaming"

    .line 266
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_manual_sync_roaming_NORMAL:I

    .line 267
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_manual_sync_roaming_NORMAL:I

    .line 264
    const/16 v7, 0xb

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-set-email"

    .line 269
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_set_email_NORMAL:I

    .line 270
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_set_email_NORMAL:I

    .line 268
    const/16 v7, 0xc

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 272
    const-string/jumbo v4, "lg-disable-data-roaming"

    .line 273
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_data_roaming_NORMAL:I

    .line 274
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_data_roaming_NORMAL:I

    .line 271
    const/16 v7, 0xd

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 276
    const-string/jumbo v4, "lg-disable-mobile-data"

    .line 277
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_mobile_data_NORMAL:I

    .line 278
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_mobile_data_NORMAL:I

    .line 275
    const/16 v7, 0xe

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 281
    const-string/jumbo v4, "lg-disalbe-bluetooth"

    .line 282
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_bluetooth_NORMAL:I

    .line 283
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_bluetooth_NORMAL:I

    .line 280
    invoke-direct {v3, v9, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 285
    const-string/jumbo v4, "lg-disable-bluetooth"

    .line 286
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_bluetooth_NORMAL:I

    .line 287
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_bluetooth_NORMAL:I

    .line 284
    invoke-direct {v3, v9, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 290
    const-string/jumbo v4, "lg-disalbe-tethering"

    .line 291
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_tethering_NORMAL:I

    .line 292
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_tethering_NORMAL:I

    .line 289
    invoke-direct {v3, v10, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 294
    const-string/jumbo v4, "lg-disable-tethering"

    .line 295
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_tethering_NORMAL:I

    .line 296
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_tethering_NORMAL:I

    .line 293
    invoke-direct {v3, v10, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 299
    const-string/jumbo v4, "lg-disalbe-external-memory"

    .line 300
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_external_memory_NORMAL:I

    .line 301
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_external_memory_NORMAL:I

    .line 298
    invoke-direct {v3, v11, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 303
    const-string/jumbo v4, "lg-disable-external-memory"

    .line 304
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_external_memory_NORMAL:I

    .line 305
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_external_memory_NORMAL:I

    .line 302
    invoke-direct {v3, v11, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disalbe-wifi"

    .line 308
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_WiFi_NORMAL:I

    .line 309
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_use_wifi:I

    .line 307
    const/16 v7, 0x12

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disable-wifi"

    .line 311
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_WiFi_NORMAL:I

    .line 312
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_use_wifi:I

    .line 310
    const/16 v7, 0x12

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disalbe-usb"

    .line 315
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_usb_NORMAL:I

    .line 316
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_use_usb:I

    .line 314
    const/16 v7, 0x13

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disable-usb"

    .line 318
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_usb_NORMAL:I

    .line 319
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_use_usb:I

    .line 317
    const/16 v7, 0x13

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disalbe-gps"

    .line 322
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_gps_NORMAL:I

    .line 323
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_gps_NORMAL:I

    .line 321
    const/16 v7, 0x14

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disable-gps"

    .line 325
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_gps_NORMAL:I

    .line 326
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_gps_NORMAL:I

    .line 324
    const/16 v7, 0x14

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 329
    const-string/jumbo v4, "lg-disalbe-screen-capture"

    .line 330
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_screen_capture_NORMAL:I

    .line 331
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_screen_capture_NORMAL:I

    .line 328
    const/16 v7, 0x15

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 333
    const-string/jumbo v4, "lg-disable-screen-capture"

    .line 334
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_screen_capture_NORMAL:I

    .line 335
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_screen_capture_NORMAL:I

    .line 332
    const/16 v7, 0x15

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 337
    const-string/jumbo v4, "lg-disable-network-location-info"

    .line 338
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_network_location_NORMAL:I

    .line 339
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_network_location_NORMAL:I

    .line 336
    const/16 v7, 0x16

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 342
    const-string/jumbo v4, "lg-disable-microphone"

    .line 343
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_microphone_NORMAL:I

    .line 344
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_microphone_NORMAL:I

    .line 341
    const/16 v7, 0x17

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-disable-nfc"

    .line 346
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_nfc_NORMAL:I

    .line 347
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_nfc_NORMAL:I

    .line 345
    const/16 v7, 0x18

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 349
    const-string/jumbo v4, "lg-disable-airplane-mode"

    .line 350
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_airplane_NORMAL:I

    .line 351
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_airplane_NORMAL:I

    .line 348
    const/16 v7, 0x19

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 353
    const-string/jumbo v4, "lg-backup-restore"

    .line 354
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_backup_restore_NORMAL:I

    .line 355
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_backup_restore_NORMAL:I

    .line 352
    const/16 v7, 0x1a

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 357
    const-string/jumbo v4, "lg-app-forcecontrol"

    .line 358
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_force_app_control_NORMAL:I

    .line 359
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_force_app_control_NORMAL:I

    .line 356
    const/16 v7, 0x1b

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 361
    const-string/jumbo v4, "lg-turnon-device"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_turn_on_device_NORMAL:I

    .line 362
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_turn_on_device_NORMAL:I

    .line 360
    const/16 v7, 0x1c

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 364
    const-string/jumbo v4, "lg-gets-usageinfo"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_get_data_info_NORMAL:I

    .line 365
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_get_data_info_NORMAL:I

    .line 363
    const/16 v7, 0x1d

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v4, "lg-control-apn"

    .line 367
    sget v5, Lcom/lge/internal/R$string;->ap_lgmdm_lab_control_apn_NORMAL:I

    .line 368
    sget v6, Lcom/lge/internal/R$string;->ap_lgmdm_desc_control_apn_NORMAL:I

    .line 366
    const/16 v7, 0x1e

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 372
    const-string/jumbo v4, "lg-disable-clipboard"

    .line 373
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_clipboard_NORMAL:I

    .line 374
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_clipboard_NORMAL:I

    .line 371
    const/16 v7, 0x1f

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 377
    const-string/jumbo v4, "lg-disable-accounts"

    .line 378
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_del_account_NORMAL:I

    .line 379
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_del_account_NORMAL:I

    .line 376
    const/16 v7, 0x20

    .line 375
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 383
    const-string/jumbo v4, "lg-disalbe-password-typing-visible"

    .line 384
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_password_typing_visible_NORMAL:I

    .line 385
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_password_typing_visible_NORMAL:I

    .line 382
    const/16 v7, 0x21

    .line 381
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 388
    const-string/jumbo v4, "lg-disable-password-typing-visible"

    .line 389
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_password_typing_visible_NORMAL:I

    .line 390
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_password_typing_visible_NORMAL:I

    .line 387
    const/16 v7, 0x21

    .line 386
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 392
    const-string/jumbo v4, "lg-prevent-swiping-the-status-bar"

    .line 393
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_statusbar_NORMAL:I

    .line 394
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_statusbar_NORMAL:I

    .line 392
    const/16 v7, 0x22

    .line 391
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 396
    const-string/jumbo v4, "lg-prevent-outgoing-calls"

    .line 397
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_outgoing_call_NORMAL:I

    .line 398
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_outgoing_call_NORMAL:I

    .line 396
    const/16 v7, 0x23

    .line 395
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 400
    const-string/jumbo v4, "lg-google-backup"

    .line 401
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_backup_my_data_NORMAL:I

    .line 402
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_backup_my_data_NORMAL:I

    .line 399
    const/16 v7, 0x24

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 404
    const-string/jumbo v4, "lg-auto-restore"

    .line 405
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_automatic_restore_NORMAL:I

    .line 406
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_automatic_restore_NORMAL:I

    .line 403
    const/16 v7, 0x25

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 408
    const-string/jumbo v4, "lg-control-devicepower"

    .line 409
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_turnoff_mobile_NORMAL:I

    .line 410
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_turnoff_mobile_NORMAL:I

    .line 408
    const/16 v7, 0x26

    .line 407
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 414
    const-string/jumbo v4, "lg-disable-multiuser"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_owner_only:I

    .line 415
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_multiuser_NORMAL:I

    .line 413
    const/16 v7, 0x27

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 420
    const-string/jumbo v4, "lg-lockscreen-ownerinfo"

    .line 421
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_showing_owner_info_NORMAL:I

    .line 422
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_showing_owner_info_NORMAL:I

    .line 419
    const/16 v7, 0x28

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 427
    const-string/jumbo v4, "lg-disable-error-report"

    .line 428
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_error_report_NORMAL:I

    .line 429
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_error_report_NORMAL:I

    .line 427
    const/16 v7, 0x29

    .line 426
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 431
    const-string/jumbo v4, "lg-disable-change-system-time"

    .line 432
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_change_system_time_NORMAL:I

    .line 433
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_change_system_time_NORMAL:I

    .line 430
    const/16 v7, 0x2a

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 435
    const-string/jumbo v4, "lg-disable-audioport"

    .line 436
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_audioport_NORMAL:I

    .line 437
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_audioport_NORMAL:I

    .line 434
    const/16 v7, 0x2b

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 439
    const-string/jumbo v4, "lg-data-usage-setting"

    .line 440
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_controll_data_usage:I

    .line 441
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_controll_data_usage:I

    .line 438
    const/16 v7, 0x2c

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 445
    const-string/jumbo v4, "lg-disable-pim-info-access"

    .line 446
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_contact_NORMAL:I

    .line 447
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_contact_NORMAL:I

    .line 445
    const/16 v7, 0x2d

    .line 444
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 450
    const-string/jumbo v4, "lg-disable-dev-mode"

    .line 451
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dev_mode:I

    .line 452
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dev_mode:I

    .line 449
    const/16 v7, 0x2e

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 455
    const-string/jumbo v4, "lg-enforce-airplane-mode"

    .line 456
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_enforce_airplane_NORMAL:I

    .line 457
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_enforce_airplane_NORMAL:I

    .line 455
    const/16 v7, 0x2f

    .line 454
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 460
    const-string/jumbo v4, "lg-disable-ir"

    .line 461
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_infrared_port_NORMAL:I

    .line 462
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_infrared_port_NORMAL:I

    .line 459
    const/16 v7, 0x30

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 465
    const-string/jumbo v4, "lg-control-cc-mode"

    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_cc_mode:I

    .line 466
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_cc_mode:I

    .line 464
    const/16 v7, 0x31

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 469
    const-string/jumbo v4, "lg-disable-dualwindow"

    .line 470
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dualwindow_NORMAL:I

    .line 471
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dualwindow_NORMAL:I

    .line 468
    const/16 v7, 0x32

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 474
    const-string/jumbo v4, "lg-disable-quickcircle"

    .line 475
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_dis_quickcircle_NORMAL:I

    .line 476
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_quickcircle_NORMAL:I

    .line 473
    const/16 v7, 0x33

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 480
    const-string/jumbo v4, "lg-disable-shortcut-key"

    .line 481
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_dis_shortcut_key_NORMAL:I

    .line 482
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_dis_shortcut_key_NORMAL:I

    .line 479
    const/16 v7, 0x34

    .line 478
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 485
    const-string/jumbo v4, "lg-disable-safemode"

    .line 486
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_safe_mode_NORMAL:I

    .line 487
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_safe_mode_NORMAL:I

    .line 484
    const/16 v7, 0x35

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 490
    const-string/jumbo v4, "lg-disable-poweroff"

    .line 491
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_poweroff_NORMAL:I

    .line 492
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_poweroff:I

    .line 489
    const/16 v7, 0x36

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 495
    const-string/jumbo v4, "lg-use-integrity-service"

    .line 496
    sget v5, Lcom/lge/internal/R$string;->sp_lgis_lab_use_lgis_NORMAL:I

    .line 497
    sget v6, Lcom/lge/internal/R$string;->sp_lgis_desc_use_lgis_NORMAL:I

    .line 494
    const/16 v7, 0x37

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 500
    const-string/jumbo v4, "lg-set-runtime-permission"

    .line 501
    sget v5, Lcom/lge/internal/R$string;->sp_lgmdm_lab_runtime_permission_NORMAL:I

    .line 502
    sget v6, Lcom/lge/internal/R$string;->sp_lgmdm_desc_runtime_permission_NORMAL:I

    .line 499
    const/16 v7, 0x38

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_50e
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_535

    .line 505
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 506
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    sget-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_50e

    .line 851
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_535
    new-instance v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo$1;

    invoke-direct {v2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo$1;-><init>()V

    sput-object v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 536
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 537
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 539
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 541
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 543
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_12
    const-string/jumbo v18, "android.app.device_admin"

    move-object/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 544
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v10, :cond_4c

    .line 545
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v19, "No android.app.device_admin meta-data"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_26} :catch_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_45

    .line 608
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_26
    move-exception v6

    .line 609
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_27
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to create context for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_45

    .line 610
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_45
    move-exception v18

    .line 611
    if-eqz v10, :cond_4b

    .line 612
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 610
    :cond_4b
    throw v18

    .line 549
    .restart local v10    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4c
    :try_start_4c
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 551
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 554
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_5a
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_6e

    .line 555
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5a

    .line 558
    :cond_6e
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v18, "device-admin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_86

    .line 560
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v19, "Meta-data does not start with device-admin tag"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 564
    :cond_86
    sget-object v18, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    .line 563
    move-object/from16 v0, v18

    invoke-virtual {v13, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 566
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mVisible:Z

    .line 568
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 579
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 580
    .local v9, "outerDepth":I
    :cond_a7
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_171

    .line 581
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c3

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_171

    .line 582
    :cond_c3
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a7

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a7

    .line 585
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 586
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v18, "uses-policies"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a7

    .line 587
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 588
    .local v7, "innerDepth":I
    :cond_e6
    :goto_e6
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a7

    .line 589
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_102

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_a7

    .line 590
    :cond_102
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_e6

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_e6

    .line 593
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 594
    .local v12, "policyName":Ljava/lang/String;
    sget-object v18, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 595
    .local v17, "val":Ljava/lang/Integer;
    if-eqz v17, :cond_139

    .line 596
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const-wide/16 v22, 0x1

    shl-long v20, v22, v20

    or-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    goto :goto_e6

    .line 599
    :cond_139
    const-string/jumbo v18, "lg-"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_e6

    .line 600
    const-string/jumbo v18, "LGMDMDeviceAdminInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown tag under uses-policies of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 600
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 601
    const-string/jumbo v20, ": "

    .line 600
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_16f} :catch_26
    .catchall {:try_start_4c .. :try_end_16f} :catchall_45

    goto/16 :goto_e6

    .line 611
    .end local v7    # "innerDepth":I
    .end local v12    # "policyName":Ljava/lang/String;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v17    # "val":Ljava/lang/Integer;
    :cond_171
    if-eqz v10, :cond_176

    .line 612
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 535
    :cond_176
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    .line 617
    return-void
.end method

.method public static isLGMDMPolicyTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "policyName"    # Ljava/lang/String;

    .prologue
    .line 866
    sget-object v0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 867
    const/4 v0, 0x0

    return v0

    .line 869
    :cond_6
    sget-object v0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 649
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .registers 3
    .param p1, "policyIdent"    # I

    .prologue
    .line 713
    sget-object v0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v6, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1c7

    .line 726
    sget-object v6, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 727
    .local v4, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v6}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 728
    iget v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    packed-switch v6, :pswitch_data_1fe

    .line 780
    :cond_23
    :pswitch_23
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 730
    :pswitch_29
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-bluetooth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 731
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 736
    :pswitch_5c
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-tethering"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 737
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 742
    :pswitch_8f
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-external-memory"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 743
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 748
    :pswitch_c3
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-wifi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 749
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 754
    :pswitch_f7
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 755
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 760
    :pswitch_12b
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-gps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 761
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 766
    :pswitch_15f
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-screen-capture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 767
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 772
    :pswitch_193
    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disalbe-password-typing-visible"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 773
    const-string/jumbo v6, "MDM:LGMDMDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 783
    .end local v4    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_1c7
    const/4 v3, 0x0

    .line 784
    .local v3, "multiUserPolicy":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    const/4 v1, -0x1

    .line 785
    .local v1, "index":I
    const/4 v0, 0x0

    .end local v3    # "multiUserPolicy":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :goto_1ca
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1e6

    .line 786
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 787
    .local v2, "mdmPolicy":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget-object v6, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string/jumbo v7, "lg-disable-multiuser"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e3

    .line 788
    move-object v3, v2

    .line 789
    .local v3, "multiUserPolicy":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    move v1, v0

    .line 785
    .end local v3    # "multiUserPolicy":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_1e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ca

    .line 792
    .end local v2    # "mdmPolicy":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_1e6
    if-eqz v3, :cond_1f8

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1f8

    .line 793
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v6

    if-eqz v6, :cond_1f9

    .line 794
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 795
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 800
    :cond_1f8
    :goto_1f8
    return-object v5

    .line 797
    :cond_1f9
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1f8

    .line 728
    nop

    :pswitch_data_1fe
    .packed-switch 0xf
        :pswitch_29
        :pswitch_5c
        :pswitch_8f
        :pswitch_c3
        :pswitch_f7
        :pswitch_12b
        :pswitch_15f
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_193
    .end packed-switch
.end method

.method public getUsesPolices()J
    .registers 7

    .prologue
    .line 718
    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 719
    .local v0, "retVal":J
    return-wide v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v2, :cond_26

    .line 670
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 671
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 672
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1b

    .line 673
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 674
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 676
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1b
    iget-object v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 678
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_26
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 812
    const-string/jumbo v1, "flags"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    const/4 v0, 0x1

    .line 813
    .local v0, "isUpgrade":Z
    :goto_b
    if-eqz v0, :cond_5a

    .line 814
    const-string/jumbo v1, "flags"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    .line 815
    iget-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_34

    .line 817
    iget-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 816
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    .line 819
    :cond_34
    iget-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    const/16 v1, 0x9

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    .line 820
    const-string/jumbo v1, "LGMDMDeviceAdminInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUpgrande :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :goto_57
    return-void

    .line 812
    .end local v0    # "isUpgrade":Z
    :cond_58
    const/4 v0, 0x0

    .restart local v0    # "isUpgrade":Z
    goto :goto_b

    .line 822
    :cond_5a
    const-string/jumbo v1, "mdm_flags"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    .line 823
    const-string/jumbo v1, "LGMDMDeviceAdminInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCommon :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .registers 6
    .param p1, "policyIdent"    # I

    .prologue
    .line 704
    iget-wide v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    const-string/jumbo v0, "mdm_flags"

    iget-wide v2, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 844
    iget-object v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 845
    iget-wide v0, p0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 843
    return-void
.end method
