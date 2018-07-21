.class Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;
.super Ljava/lang/Object;
.source "AppNotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraSpec"
.end annotation


# static fields
.field public static final USAGE_COMPONENT:Ljava/lang/String; = "component"

.field public static final USAGE_MAIN:Ljava/lang/String; = "main"

.field public static final USAGE_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mName:Ljava/lang/String;

.field private mUsage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    if-nez p1, :cond_b

    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 542
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->mName:Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->mUsage:Ljava/lang/String;

    .line 544
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->mUsage:Ljava/lang/String;

    return-object v0
.end method
