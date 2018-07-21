.class public final enum Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;
.super Ljava/lang/Enum;
.source "SharedPreferencesConst.java"

# interfaces
.implements Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkspaceCAKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;",
        ">;",
        "Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

.field public static final enum ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    const-string v1, "ISLOADING"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ENUM$VALUES:[Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ENUM$VALUES:[Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
