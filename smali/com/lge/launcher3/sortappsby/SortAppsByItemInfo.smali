.class public Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;
.super Ljava/lang/Object;
.source "SortAppsByItemInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field mCellX:I

.field mCellY:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field mItemType:I

.field mLabel:Ljava/lang/String;

.field mLauncherActivityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

.field mNewCellX:I

.field mNewCellY:I

.field mNewScreenId:I

.field mNewScreenRank:I

.field mProfileId:I

.field mScreenId:I

.field mScreenRank:I

.field mSpanX:I

.field mSpanY:I

.field mTitle:Ljava/lang/String;

.field mUserHandle:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;IIIIIIII)V
    .registers 20

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mId:I

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mTitle:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mIntent:Landroid/content/Intent;

    .line 27
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenId:I

    .line 28
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    .line 31
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanX:I

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanY:I

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mProfileId:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mBound:Landroid/graphics/Rect;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mUserHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLauncherActivityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLabel:Ljava/lang/String;

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenId:I

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenRank:I

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellX:I

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellY:I

    .line 73
    iput p2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mId:I

    .line 74
    iput-object p3, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mTitle:Ljava/lang/String;

    .line 75
    iput p5, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenId:I

    .line 76
    iput p6, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    .line 77
    iput-object p4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mIntent:Landroid/content/Intent;

    .line 78
    iput p7, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    .line 79
    iput p8, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    .line 80
    move/from16 v0, p9

    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanX:I

    .line 81
    move/from16 v0, p10

    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanY:I

    .line 82
    move/from16 v0, p11

    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    .line 83
    move/from16 v0, p12

    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mProfileId:I

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    iget v3, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    iget v4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    iget v5, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanX:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    iget v6, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanY:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mBound:Landroid/graphics/Rect;

    .line 87
    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mProfileId:I

    invoke-static {p1, v1}, Lcom/lge/launcher3/util/UserUtils;->getUserHandleCompat(Landroid/content/Context;I)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mUserHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 88
    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mIntent:Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mUserHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 88
    invoke-static {p1, v1, v2}, Lcom/lge/launcher3/util/LauncherActivityInfoUtils;->getLauncherActivityInfo(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLauncherActivityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 91
    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLauncherActivityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getLabel(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLabel:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private getLabel(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_4

    .line 106
    :cond_3
    :goto_3
    return-object v0

    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 106
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public contains(III)Z
    .registers 5

    .prologue
    .line 116
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    if-eq v0, p1, :cond_6

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_5
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemType()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    return v0
.end method

.method public getItemTypeToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    packed-switch v0, :pswitch_data_14

    .line 225
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 215
    :pswitch_7
    const-string v0, "FOLDER"

    goto :goto_6

    .line 217
    :pswitch_a
    const-string v0, "SHORTCUT"

    goto :goto_6

    .line 219
    :pswitch_d
    const-string v0, "APPLICATION"

    goto :goto_6

    .line 221
    :pswitch_10
    const-string v0, "WIDGET"

    goto :goto_6

    .line 213
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_5
        :pswitch_10
    .end packed-switch
.end method

.method public getLauncherActivityInfo()Lcom/android/launcher3/compat/LauncherActivityInfoCompat;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLauncherActivityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    packed-switch v0, :pswitch_data_14

    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mTitle:Ljava/lang/String;

    .line 139
    if-nez v0, :cond_b

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLabel:Ljava/lang/String;

    .line 144
    :cond_b
    :goto_b
    return-object v0

    .line 129
    :pswitch_c
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLabel:Ljava/lang/String;

    .line 130
    if-nez v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mTitle:Ljava/lang/String;

    goto :goto_b

    .line 127
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public getUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mUserHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    return-object v0
.end method

.method public isCellXChanged()Z
    .registers 3

    .prologue
    .line 172
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellX:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCellYChanged()Z
    .registers 3

    .prologue
    .line 179
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellY:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isScreenIdChanged()Z
    .registers 3

    .prologue
    .line 165
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenId:I

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenId:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setNewCell(IIII)V
    .registers 5

    .prologue
    .line 189
    iput p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenId:I

    .line 190
    iput p2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenRank:I

    .line 191
    iput p3, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellX:I

    .line 192
    iput p4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellY:I

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    const-string v1, ", mScreenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string v1, ", mSpanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewScreenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string v1, ", mNewScreenRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewCellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewCellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
