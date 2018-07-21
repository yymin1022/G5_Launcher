.class public Lcom/android/launcher3/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final EXTRA_PROFILE:Ljava/lang/String; = "profile"

.field public static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public contentDescription:Ljava/lang/CharSequence;

.field public dropPos:[I

.field public id:J

.field public itemType:I

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public requiresDbUpdate:Z

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;

.field public user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 60
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 65
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 70
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 75
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 80
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 85
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 90
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 95
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 100
    iput v4, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 105
    iput-boolean v4, p0, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    .line 125
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/ItemInfo;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 60
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 65
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 70
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 75
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 80
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 85
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 90
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 95
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 100
    iput v4, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 105
    iput-boolean v4, p0, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 131
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 132
    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 180
    if-eqz p1, :cond_b

    .line 181
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 182
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 184
    :cond_b
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/launcher3/ItemInfo;)V
    .registers 4

    .prologue
    .line 135
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 136
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 137
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 138
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 139
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 140
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 141
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 142
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 143
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 144
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 145
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 146
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 147
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 148
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Intent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onAddFromClipData(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddFromClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAddToClipData(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddToClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 7

    .prologue
    .line 162
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v0, "container"

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v0, "screen"

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "rank"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 171
    const-string v2, "profileId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    iget-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_7b

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_7b
    return-void
.end method

.method public onResizeItemInDatabase(Landroid/content/ContentValues;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativejoin/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_nativejoin_ItemInfoAspect$com_android_launcher3_ItemInfo$onResizeItemInDatabase(Lcom/android/launcher3/ItemInfo;Landroid/content/ContentValues;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->dropPos:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .registers 1

    .prologue
    .line 193
    return-void
.end method
