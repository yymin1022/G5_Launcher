.class public Lcom/lge/launcher3/iconchange/IconChangeInfo;
.super Ljava/lang/Object;
.source "IconChangeInfo.java"


# instance fields
.field public adaptiveTextColor:I

.field public icon:Landroid/graphics/Bitmap;

.field public iconId:Ljava/lang/String;

.field public isDockIcon:Z

.field public isPhotoIcon:Z

.field public mId:J

.field public mItemType:I

.field public originalIcon:Landroid/graphics/Bitmap;

.field public previewIcon:Landroid/graphics/Bitmap;

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    .line 13
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 15
    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 16
    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 17
    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 18
    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 19
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mItemType:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mId:J

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/lge/launcher3/iconchange/IconChangeDbHelper;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    .line 13
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 14
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 16
    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 17
    iput-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 18
    iput-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 19
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mItemType:I

    .line 20
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mId:J

    .line 21
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 44
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    .line 45
    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_66

    :goto_2f
    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    .line 46
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->getIconId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->hasPhotoIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 48
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 49
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 50
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    if-eqz v0, :cond_68

    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->getUserCustomizedIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4d
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 51
    iget-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    if-eqz v0, :cond_6d

    .line 54
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->getIconId()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p3, p1, v0}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->getThumbailFromDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 58
    :goto_5d
    iget-wide v0, p2, Lcom/android/launcher3/ShortcutInfo;->id:J

    iput-wide v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mId:J

    .line 59
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mItemType:I

    .line 60
    return-void

    :cond_66
    move v0, v1

    .line 45
    goto :goto_2f

    .line 50
    :cond_68
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4d

    .line 56
    :cond_6d
    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    goto :goto_5d
.end method

.method public constructor <init>(Lcom/lge/launcher3/iconchange/IconChangeInfo;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    .line 13
    iput-boolean v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 15
    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 16
    iput v3, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 17
    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 18
    iput-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 19
    iput v1, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mItemType:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mId:J

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 28
    if-eqz p1, :cond_4f

    .line 29
    iget-object v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->originalIcon:Landroid/graphics/Bitmap;

    .line 30
    iget-boolean v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    .line 31
    iget-boolean v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    iput-boolean v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isPhotoIcon:Z

    .line 32
    iget-object v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanX:I

    .line 34
    iget v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->spanY:I

    .line 35
    iget-object v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->previewIcon:Landroid/graphics/Bitmap;

    .line 37
    iget v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mItemType:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mItemType:I

    .line 38
    iget-wide v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mId:J

    iput-wide v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->mId:J

    .line 39
    iget v0, p1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->adaptiveTextColor:I

    .line 41
    :cond_4f
    return-void
.end method


# virtual methods
.method public convertToShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/ShortcutInfo;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ShortcutInfo;->setUserCustomizedIcon(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeInfo;->iconId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ShortcutInfo;->setIconId(Ljava/lang/String;)V

    .line 65
    return-object p1
.end method
