.class Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;
.super Ljava/lang/Object;
.source "SBTimeTickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemRes"
.end annotation


# instance fields
.field private mMessageId:I

.field private mWallpaperId:I

.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;II)V
    .registers 4

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->mMessageId:I

    .line 32
    iput p3, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->mWallpaperId:I

    .line 33
    return-void
.end method


# virtual methods
.method public getMessageId()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->mMessageId:I

    return v0
.end method

.method public getWallpaperId()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager$ItemRes;->mWallpaperId:I

    return v0
.end method
