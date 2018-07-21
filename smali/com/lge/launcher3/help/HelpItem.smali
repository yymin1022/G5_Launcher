.class Lcom/lge/launcher3/help/HelpItem;
.super Ljava/lang/Object;
.source "HelpItemInfo.java"


# instance fields
.field mDescResId:I

.field mDescSubResId:[I

.field mImageResId:I

.field mTitleResId:I


# direct methods
.method public constructor <init>(III[I)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/lge/launcher3/help/HelpItem;->mTitleResId:I

    .line 88
    iput v0, p0, Lcom/lge/launcher3/help/HelpItem;->mImageResId:I

    .line 89
    iput v0, p0, Lcom/lge/launcher3/help/HelpItem;->mDescResId:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpItem;->mDescSubResId:[I

    .line 99
    iput p1, p0, Lcom/lge/launcher3/help/HelpItem;->mTitleResId:I

    .line 100
    iput p2, p0, Lcom/lge/launcher3/help/HelpItem;->mImageResId:I

    .line 101
    iput p3, p0, Lcom/lge/launcher3/help/HelpItem;->mDescResId:I

    .line 102
    iput-object p4, p0, Lcom/lge/launcher3/help/HelpItem;->mDescSubResId:[I

    .line 103
    return-void
.end method
