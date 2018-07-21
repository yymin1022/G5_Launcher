.class public Lcom/lge/launcher3/widgettray/GroupResolveInfo;
.super Landroid/content/pm/ResolveInfo;
.source "GroupResolveInfo.java"


# instance fields
.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mGroupList:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mGroupList:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 19
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mGroupList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 21
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lge/launcher3/util/PackageUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mLabel:Ljava/lang/String;

    .line 23
    :cond_28
    return-void
.end method


# virtual methods
.method public getGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method
