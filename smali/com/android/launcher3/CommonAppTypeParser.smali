.class public Lcom/android/launcher3/CommonAppTypeParser;
.super Ljava/lang/Object;
.source "CommonAppTypeParser.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;
    }
.end annotation


# static fields
.field private static final RESTORE_FLAG_BIT_SHIFT:I = 0x4

.field public static final SUPPORTED_TYPE_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CommonAppTypeParser"


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mItemId:J

.field final mResId:I

.field parsedIntent:Landroid/content/Intent;

.field parsedTitle:Ljava/lang/String;

.field parsedValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(JILandroid/content/Context;)V
    .registers 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/launcher3/CommonAppTypeParser;->mItemId:J

    .line 58
    iput-object p4, p0, Lcom/android/launcher3/CommonAppTypeParser;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p3}, Lcom/android/launcher3/CommonAppTypeParser;->getResourceForItemType(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CommonAppTypeParser;->mResId:I

    .line 60
    return-void
.end method

.method public static decodeItemTypeFromFlag(I)I
    .registers 2

    .prologue
    .line 151
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static encodeItemTypeToFlag(I)I
    .registers 2

    .prologue
    .line 147
    shl-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static getResourceForItemType(I)I
    .registers 2

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_1e

    .line 142
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 124
    :pswitch_5
    const v0, 0x7f070008

    goto :goto_4

    .line 127
    :pswitch_9
    const v0, 0x7f070007

    goto :goto_4

    .line 130
    :pswitch_d
    const v0, 0x7f070005

    goto :goto_4

    .line 133
    :pswitch_11
    const v0, 0x7f070003

    goto :goto_4

    .line 136
    :pswitch_15
    const v0, 0x7f070006

    goto :goto_4

    .line 139
    :pswitch_19
    const v0, 0x7f070004

    goto :goto_4

    .line 122
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public findDefaultApp()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 83
    iget v1, p0, Lcom/android/launcher3/CommonAppTypeParser;->mResId:I

    if-nez v1, :cond_7

    .line 90
    :cond_6
    :goto_6
    return v0

    .line 87
    :cond_7
    iput-object v2, p0, Lcom/android/launcher3/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    .line 88
    iput-object v2, p0, Lcom/android/launcher3/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    .line 89
    new-instance v1, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;-><init>(Lcom/android/launcher3/CommonAppTypeParser;)V

    invoke-virtual {v1}, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->parseValues()V

    .line 90
    iget-object v1, p0, Lcom/android/launcher3/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public generateNewItemId()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/launcher3/CommonAppTypeParser;->mItemId:J

    return-wide v0
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 69
    iput-object p2, p0, Lcom/android/launcher3/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    .line 72
    const-string v0, "iconType"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v0, "iconPackage"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "iconResource"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "icon"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 76
    const-wide/16 v0, 0x1

    return-wide v0
.end method
