.class public Lcom/lge/launcher3/iconchange/IconItemInfo;
.super Ljava/lang/Object;
.source "IconItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;
    }
.end annotation


# static fields
.field public static final PROPERTY_PHOTO_ICON:Ljava/lang/String; = "photo_icon"

.field public static final PROPERTY_PHOTO_ICON_ID:Ljava/lang/String; = "photo_icon_id"


# instance fields
.field public final icon:Landroid/graphics/drawable/Drawable;

.field public id:Ljava/lang/String;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final source:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

.field public final spanX:I

.field public final spanY:I

.field public final textColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;Landroid/graphics/drawable/Drawable;III)V
    .registers 8

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->properties:Ljava/util/HashMap;

    .line 26
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->id:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->source:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    .line 28
    iput p4, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanX:I

    .line 29
    iput p5, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanY:I

    .line 30
    iput-object p3, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 31
    iput p6, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->textColor:I

    .line 32
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconItemInfo;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
