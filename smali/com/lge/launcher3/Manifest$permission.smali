.class public final Lcom/lge/launcher3/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final CUSTOMIZE_APPICONS:Ljava/lang/String; = "com.lge.launcher.permission.CUSTOMIZE_APPICONS"

.field public static final DELETE_DIALOG:Ljava/lang/String; = "com.lge.launcher3.permission.DELETE_DIALOG"

.field public static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field public static final LAUNCHERFACADE:Ljava/lang/String; = "com.sprint.internal.id.permission.LAUNCHERFACADE"

.field public static final READ_SETTINGS:Ljava/lang/String; = "com.lge.launcher3.permission.READ_SETTINGS"

.field public static final RECEIVE_FIRST_LOAD_BROADCAST:Ljava/lang/String; = "com.lge.launcher3.permission.RECEIVE_FIRST_LOAD_BROADCAST"

.field public static final RECEIVE_LAUNCH_BROADCASTS:Ljava/lang/String; = "com.lge.launcher3.permission.RECEIVE_LAUNCH_BROADCASTS"

.field public static final WRITE_SETTINGS:Ljava/lang/String; = "com.lge.launcher3.permission.WRITE_SETTINGS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
