.class public Lcom/android/launcher3/DummyWidget;
.super Ljava/lang/Object;
.source "DummyWidget.java"

# interfaces
.implements Lcom/android/launcher3/CustomAppWidget;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    const-string v0, "Dumb Launcher Widget"

    return-object v0
.end method

.method public getMinSpanX()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getMinSpanY()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public getPreviewImage()I
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public getResizeMode()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x3

    return v0
.end method

.method public getSpanX()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x2

    return v0
.end method

.method public getSpanY()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x2

    return v0
.end method

.method public getWidgetLayout()I
    .registers 2

    .prologue
    .line 24
    const v0, 0x7f040011

    return v0
.end method
