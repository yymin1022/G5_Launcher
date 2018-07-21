.class Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;
.super Ljava/lang/Object;
.source "LGMDMUIApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockdownAppsinfo"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field isdied:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

.field userHandle:I


# direct methods
.method private constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->packageName:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->intent:Landroid/content/Intent;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->isdied:Z

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;)V

    return-void
.end method
