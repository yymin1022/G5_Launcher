.class public Lcom/android/launcher3/LauncherModel$AjcClosure5;
.super Lorg/aspectj/runtime/internal/AroundClosure;
.source "LauncherModel.java"


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    iget-object v1, p0, Lorg/aspectj/runtime/internal/AroundClosure;->state:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Lorg/aspectj/lang/JoinPoint;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->forceReload_aroundBody4(Lcom/android/launcher3/LauncherModel;Lorg/aspectj/lang/JoinPoint;)V

    const/4 v0, 0x0

    return-object v0
.end method
