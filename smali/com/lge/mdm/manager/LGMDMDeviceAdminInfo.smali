.class public final Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;
.super Ljava/lang/Object;
.source "LGMDMDeviceAdminInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "LGMDMDeviceAdminInfo"


# instance fields
.field private mLGMDMDeviceAdmin:Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;->mLGMDMDeviceAdmin:Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    .line 63
    return-void
.end method


# virtual methods
.method public getUsedPolicies()Ljava/util/ArrayList;
    .registers 2
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
    .line 72
    iget-object v0, p0, Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;->mLGMDMDeviceAdmin:Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
