.class Lcom/android/launcher3/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
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
        "Lcom/android/launcher3/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final synthetic val$profile:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->val$profile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I
    .registers 13

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->val$profile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 2769
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->val$profile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 2770
    mul-int/2addr v1, v0

    .line 2771
    mul-int/lit8 v2, v1, 0x6

    .line 2772
    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->container:J

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    int-to-long v8, v1

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 2773
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    mul-int/2addr v3, v0

    int-to-long v6, v3

    .line 2772
    add-long/2addr v4, v6

    .line 2773
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    int-to-long v6, v3

    .line 2772
    add-long/2addr v4, v6

    .line 2774
    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->container:J

    int-to-long v2, v2

    mul-long/2addr v2, v6

    iget-wide v6, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    int-to-long v8, v1

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 2775
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 2774
    add-long/2addr v0, v2

    .line 2775
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    int-to-long v2, v2

    .line 2774
    add-long/2addr v0, v2

    .line 2776
    sub-long v0, v4, v0

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method
