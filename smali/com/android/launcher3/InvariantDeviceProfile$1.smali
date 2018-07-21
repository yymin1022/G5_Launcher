.class Lcom/android/launcher3/InvariantDeviceProfile$1;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/InvariantDeviceProfile;->findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;
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
        "Lcom/android/launcher3/InvariantDeviceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final synthetic val$height:F

.field private final synthetic val$width:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;FF)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iput p3, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;)I
    .registers 9

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v4, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iget v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    iget v4, p2, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v5, p2, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v1

    .line 262
    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile$1;->compare(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;)I

    move-result v0

    return v0
.end method
