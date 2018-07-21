.class Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;
.super Ljava/io/IOException;
.source "LauncherBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidBackupException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bf2e87d9bce62baL


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherBackupHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;->this$0:Lcom/android/launcher3/LauncherBackupHelper;

    .line 1163
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;->this$0:Lcom/android/launcher3/LauncherBackupHelper;

    .line 1159
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1160
    return-void
.end method
