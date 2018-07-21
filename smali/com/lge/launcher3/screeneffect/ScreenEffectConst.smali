.class public Lcom/lge/launcher3/screeneffect/ScreenEffectConst;
.super Ljava/lang/Object;
.source "ScreenEffectConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/screeneffect/ScreenEffectConst$DrawState;,
        Lcom/lge/launcher3/screeneffect/ScreenEffectConst$OverscrollState;,
        Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;,
        Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;,
        Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;
    }
.end annotation


# static fields
.field public static final MIN_SNAP_DURATION:I = 0x12c

.field public static final MIN_SNAP_VELOCITY:I = 0x3e8

.field public static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field public static final PAGE_OVERSCROLL_SNAP_ANIMATION_DURATION:I = 0xc8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
