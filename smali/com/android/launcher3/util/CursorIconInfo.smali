.class public Lcom/android/launcher3/util/CursorIconInfo;
.super Ljava/lang/Object;
.source "CursorIconInfo.java"


# instance fields
.field public final iconIndex:I

.field public final iconPackageIndex:I

.field public final iconResourceIndex:I

.field public final iconTypeIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "iconType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconTypeIndex:I

    .line 40
    const-string v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconIndex:I

    .line 41
    const-string v0, "iconPackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconPackageIndex:I

    .line 42
    const-string v0, "iconResource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconResourceIndex:I

    .line 43
    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    iget v1, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconTypeIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 48
    packed-switch v1, :pswitch_data_4e

    .line 68
    :cond_a
    :goto_a
    return-object v0

    .line 50
    :pswitch_b
    iget v1, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconPackageIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget v2, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconResourceIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 53
    :cond_23
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 54
    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 55
    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 56
    invoke-static {v1, v2, p3}, Lcom/android/launcher3/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    :cond_36
    if-nez v0, :cond_a

    .line 60
    iget v0, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconIndex:I

    invoke-static {p1, v0, p3}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    .line 64
    :pswitch_3f
    iget v0, p0, Lcom/android/launcher3/util/CursorIconInfo;->iconIndex:I

    invoke-static {p1, v0, p3}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_4c

    const/4 v0, 0x1

    :goto_48
    iput-boolean v0, p2, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    move-object v0, v1

    goto :goto_a

    :cond_4c
    const/4 v0, 0x0

    goto :goto_48

    .line 48
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_3f
    .end packed-switch
.end method
