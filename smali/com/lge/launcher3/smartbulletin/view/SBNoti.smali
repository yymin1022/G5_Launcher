.class public Lcom/lge/launcher3/smartbulletin/view/SBNoti;
.super Ljava/lang/Object;
.source "SBNoti.java"


# instance fields
.field mComponentName:Ljava/lang/String;

.field mID:I

.field mNotiType:Ljava/lang/String;

.field mResUri:Ljava/lang/String;

.field mTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mTime:J

    .line 27
    iput-object p3, p0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mNotiType:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mResUri:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    .line 30
    return-void
.end method
