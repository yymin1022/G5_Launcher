.class Lcom/lge/launcher3/smartbulletin/view/SBNotiDB$1;
.super Ljava/lang/Object;
.source "SBNotiDB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/launcher3/smartbulletin/view/SBNoti;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/launcher3/smartbulletin/view/SBNoti;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)I
    .registers 7

    .prologue
    .line 236
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 237
    iget-wide v0, p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mTime:J

    iget-wide v2, p2, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 238
    const/4 v0, -0x1

    .line 242
    :goto_d
    return v0

    .line 240
    :cond_e
    const/4 v0, 0x1

    goto :goto_d

    .line 242
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    check-cast p2, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB$1;->compare(Lcom/lge/launcher3/smartbulletin/view/SBNoti;Lcom/lge/launcher3/smartbulletin/view/SBNoti;)I

    move-result v0

    return v0
.end method
