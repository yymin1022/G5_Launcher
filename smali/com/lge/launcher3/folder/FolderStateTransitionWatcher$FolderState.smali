.class public final enum Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;
.super Ljava/lang/Enum;
.source "FolderStateTransitionWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FolderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

.field public static final enum CLOSE_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

.field public static final enum OPEN_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

.field public static final enum OPEN_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    const-string v1, "OPEN_START"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->OPEN_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    new-instance v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    const-string v1, "OPEN_END"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->OPEN_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    new-instance v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    const-string v1, "CLOSE_START"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->CLOSE_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    new-instance v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    const-string v1, "CLOSE_END"

    invoke-direct {v0, v1, v5}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->CLOSE_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    sget-object v1, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->OPEN_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->OPEN_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->CLOSE_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->CLOSE_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->ENUM$VALUES:[Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->ENUM$VALUES:[Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
