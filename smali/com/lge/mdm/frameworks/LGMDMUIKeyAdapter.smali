.class public Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIKeyAdapter.java"


# static fields
.field private static synthetic -com_lge_mdm_LGMDMManager$KeyTypeSwitchesValues:[I

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;


# direct methods
.method private static synthetic -getcom_lge_mdm_LGMDMManager$KeyTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->-com_lge_mdm_LGMDMManager$KeyTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->-com_lge_mdm_LGMDMManager$KeyTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/lge/mdm/LGMDMManager$KeyType;->values()[Lcom/lge/mdm/LGMDMManager$KeyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->BACK:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_68

    :goto_17
    :try_start_17
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->DUALWINDOW:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_66

    :goto_20
    :try_start_20
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->HOME:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_64

    :goto_29
    :try_start_29
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->MENU:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_62

    :goto_32
    :try_start_32
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->NOTIFICATION:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_60

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->QMEMO:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_5e

    :goto_44
    :try_start_44
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->QSLIDE:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_5c

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->RECENT:Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_5a

    :goto_57
    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->-com_lge_mdm_LGMDMManager$KeyTypeSwitchesValues:[I

    return-object v0

    :catch_5a
    move-exception v1

    goto :goto_57

    :catch_5c
    move-exception v1

    goto :goto_4d

    :catch_5e
    move-exception v1

    goto :goto_44

    :catch_60
    move-exception v1

    goto :goto_3b

    :catch_62
    move-exception v1

    goto :goto_32

    :catch_64
    move-exception v1

    goto :goto_29

    :catch_66
    move-exception v1

    goto :goto_20

    :catch_68
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;

    .line 35
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;

    return-object v0
.end method

.method private getKeyType(I)Lcom/lge/mdm/LGMDMManager$KeyType;
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 84
    sparse-switch p1, :sswitch_data_1e

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 86
    :sswitch_5
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->HOME:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 88
    :sswitch_8
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->BACK:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 90
    :sswitch_b
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->MENU:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 92
    :sswitch_e
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->RECENT:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 94
    :sswitch_11
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->NOTIFICATION:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 96
    :sswitch_14
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->QSLIDE:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 98
    :sswitch_17
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->QMEMO:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 100
    :sswitch_1a
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->DUALWINDOW:Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0

    .line 84
    nop

    :sswitch_data_1e
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_8
        0x52 -> :sswitch_b
        0x53 -> :sswitch_11
        0xa7 -> :sswitch_14
        0xab -> :sswitch_17
        0xac -> :sswitch_1a
        0xbb -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public getAllowSpecificKey(III)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 42
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 43
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v1, :cond_45

    .line 44
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->getKeyType(I)Lcom/lge/mdm/LGMDMManager$KeyType;

    move-result-object v0

    .line 46
    .local v0, "keyType":Lcom/lge/mdm/LGMDMManager$KeyType;
    if-eqz v0, :cond_2a

    .line 47
    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v3, v2, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowSpecificKey(Landroid/content/ComponentName;II)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 48
    if-nez p2, :cond_29

    .line 49
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->-getcom_lge_mdm_LGMDMManager$KeyTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    .line 60
    return v5

    .line 63
    :cond_29
    :pswitch_29
    return v4

    .line 65
    :cond_2a
    if-eqz v0, :cond_45

    invoke-virtual {v1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getRecentApplicationToastView(I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 66
    if-nez p2, :cond_45

    .line 67
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUIKeyAdapter;->-getcom_lge_mdm_LGMDMManager$KeyTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager$KeyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    .line 75
    return v5

    .line 72
    :pswitch_42
    invoke-virtual {v1, v4, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setRecentApplicationToastView(ZI)V

    .line 80
    .end local v0    # "keyType":Lcom/lge/mdm/LGMDMManager$KeyType;
    :cond_45
    return v5

    .line 49
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch

    .line 67
    :pswitch_data_5a
    .packed-switch 0x8
        :pswitch_42
    .end packed-switch
.end method
