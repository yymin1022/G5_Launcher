.class public Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;
.super Ljava/lang/Object;
.source "InitialGuidePageInfoMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageInfo"
.end annotation


# instance fields
.field mDescMainResId:I

.field mDescSubResId:[I

.field mImageResId:I

.field mPageType:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

.field mTitleResId:I

.field final synthetic this$0:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;III[I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 45
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->this$0:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mPageType:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    .line 32
    iput v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mTitleResId:I

    .line 33
    iput v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mImageResId:I

    .line 34
    iput v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescMainResId:I

    .line 35
    iput-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescSubResId:[I

    .line 46
    iput-object p2, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mPageType:Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageType;

    .line 48
    iput p3, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mTitleResId:I

    .line 49
    iput p4, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mImageResId:I

    .line 50
    iput p5, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescMainResId:I

    .line 51
    iput-object p6, p0, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescSubResId:[I

    .line 52
    return-void
.end method
