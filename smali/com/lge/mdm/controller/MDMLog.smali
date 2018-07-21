.class public Lcom/lge/mdm/controller/MDMLog;
.super Ljava/lang/Object;
.source "MDMLog.java"


# static fields
.field private static Debug:Z = false

.field public static final LOG_XML:Ljava/lang/String; = "/data/system/lgmdm_log.xml"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/mdm/controller/MDMLog;->Debug:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    return-void
.end method

.method public static getDebugmode()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/lge/mdm/controller/MDMLog;->Debug:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    return-void
.end method

.method protected static loadDebugMode()V
    .registers 0

    .prologue
    .line 70
    return-void
.end method

.method private static makeJournaledFile(Ljava/lang/String;)Lcom/android/internal/util/JournaledFile;
    .registers 2
    .param p0, "base"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static saveDebugmode()V
    .registers 0

    .prologue
    .line 67
    return-void
.end method

.method public static setDebugmode(Z)V
    .registers 1
    .param p0, "_Debug"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/lge/mdm/controller/MDMLog;->Debug:Z

    .line 25
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "SUBTAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    return-void
.end method
