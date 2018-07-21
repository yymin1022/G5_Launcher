.class public Lcom/lge/launcher3/operator/AtntConfiguration;
.super Ljava/lang/Object;
.source "AtntConfiguration.java"

# interfaces
.implements Lcom/lge/launcher3/operator/OperatorConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setup(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VplApps;->init(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public teardown()V
    .registers 1

    .prologue
    .line 17
    return-void
.end method
