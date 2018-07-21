.class final enum Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$1;
.super Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
.source "BackgroundDataRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;-><init>(Ljava/lang/String;ILcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;)V

    return-void
.end method


# virtual methods
.method ___getRestrictBackground(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 31
    const-string/jumbo v2, "data_network_user_background_setting_data"

    .line 30
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method ___setRestrictBackground(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 23
    if-eqz p2, :cond_e

    const/4 v0, 0x1

    .line 25
    .local v0, "v":I
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 26
    const-string/jumbo v2, "data_network_user_background_setting_data"

    .line 25
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    return-void

    .line 23
    .end local v0    # "v":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "v":I
    goto :goto_3
.end method
