.class public Lorg/aspectj/lang/SoftException;
.super Ljava/lang/RuntimeException;
.source "SoftException.java"


# static fields
.field private static final HAVE_JAVA_14:Z


# instance fields
.field inner:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_1
    const-string v1, "java.nio.Buffer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_a

    .line 39
    const/4 v0, 0x1

    .line 43
    :goto_7
    sput-boolean v0, Lorg/aspectj/lang/SoftException;->HAVE_JAVA_14:Z

    .line 44
    return-void

    .line 40
    :catch_a
    move-exception v1

    goto :goto_7
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/aspectj/lang/SoftException;->inner:Ljava/lang/Throwable;

    .line 54
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->inner:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getWrappedThrowable()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->inner:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .prologue
    .line 60
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/aspectj/lang/SoftException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 61
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 4

    .prologue
    .line 64
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 65
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->inner:Ljava/lang/Throwable;

    .line 66
    sget-boolean v1, Lorg/aspectj/lang/SoftException;->HAVE_JAVA_14:Z

    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    .line 67
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 70
    :cond_13
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 4

    .prologue
    .line 73
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 74
    iget-object v0, p0, Lorg/aspectj/lang/SoftException;->inner:Ljava/lang/Throwable;

    .line 75
    sget-boolean v1, Lorg/aspectj/lang/SoftException;->HAVE_JAVA_14:Z

    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    .line 76
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    :cond_13
    return-void
.end method
