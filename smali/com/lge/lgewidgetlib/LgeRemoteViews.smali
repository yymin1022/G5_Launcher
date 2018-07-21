.class public Lcom/lge/lgewidgetlib/LgeRemoteViews;
.super Landroid/widget/RemoteViews;
.source "LgeRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgewidgetlib/LgeRemoteViews$LgeRemoteView;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public static checkAnnotationForCustomView(Ljava/lang/Class;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 191
    const-class v1, Lcom/lge/lgewidgetlib/LgeRemoteViews$LgeRemoteView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 192
    array-length v4, v2

    move v1, v0

    :goto_d
    if-lt v1, v4, :cond_10

    .line 197
    :goto_f
    return v0

    .line 192
    :cond_10
    aget-object v5, v2, v1

    .line 193
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 194
    const/4 v0, 0x1

    goto :goto_f

    .line 192
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static getLgeRemoteViewsFromRemoteViews(Landroid/widget/RemoteViews;)Lcom/lge/lgewidgetlib/LgeRemoteViews;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    new-instance v1, Lcom/lge/lgewidgetlib/LgeRemoteViews;

    invoke-direct {v1, v0}, Lcom/lge/lgewidgetlib/LgeRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v1
.end method

.method private getLgeRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 6

    .prologue
    .line 104
    const-class v0, Landroid/widget/RemoteViews;

    .line 105
    const-string v1, "mLandscape"

    .line 104
    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 106
    const-class v1, Landroid/widget/RemoteViews;

    .line 107
    const-string v2, "mPortrait"

    .line 106
    invoke-static {v1, p0, v2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 108
    if-eqz v0, :cond_28

    if-eqz v1, :cond_28

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 110
    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 116
    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    .line 113
    goto :goto_25

    :cond_28
    move-object v0, p0

    .line 116
    goto :goto_25
.end method

.method private performApplyForLgeRemoteViews(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 10

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 125
    const-string v1, "performApply"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 126
    const-class v4, Landroid/widget/RemoteViews$OnClickHandler;

    aput-object v4, v2, v3

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_33} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_33} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_33} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_33} :catch_43

    .line 142
    :goto_33
    return-void

    .line 129
    :catch_34
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_33

    .line 132
    :catch_39
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_33

    .line 135
    :catch_3e
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_33

    .line 138
    :catch_43
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_33
.end method

.method private prepareContextForCustomView(Landroid/content/Context;)Landroid/content/Context;
    .registers 6

    .prologue
    .line 76
    :try_start_0
    const-class v0, Landroid/widget/RemoteViews;

    const-string v1, "mApplication"

    .line 75
    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 79
    const/4 v1, 0x3

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object p1

    .line 100
    :cond_f
    :goto_f
    return-object p1

    .line 83
    :catch_10
    move-exception v0

    .line 85
    const-class v0, Landroid/widget/RemoteViews;

    const-string v1, "mPackage"

    .line 84
    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_f

    .line 91
    const/4 v2, 0x3

    .line 92
    :try_start_1e
    const-class v1, Landroid/widget/RemoteViews;

    .line 93
    const-string v3, "mUser"

    .line 92
    invoke-static {v1, p0, v3}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 89
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_2b} :catch_2d

    move-result-object p1

    goto :goto_f

    .line 94
    :catch_2d
    move-exception v0

    .line 95
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 81
    :catch_32
    move-exception v0

    goto :goto_f
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->applyForCustomView(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .registers 5

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->applyForCustomView(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public applyForCustomView(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .registers 8

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->getLgeRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 149
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->prepareContextForCustomView(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 152
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    check-cast v0, Landroid/view/LayoutInflater;

    .line 154
    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 158
    new-instance v2, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;

    invoke-direct {v2}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;-><init>()V

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 161
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->performApplyForLgeRemoteViews(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 165
    return-object v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/RemoteViews;->onLoadClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_7
    return v0

    :cond_8
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->checkAnnotationForCustomView(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_7
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->reapplyForCustomView(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 56
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 4

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->reapplyForCustomView(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 69
    return-void
.end method

.method public reapplyForCustomView(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 8

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->getLgeRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 174
    const-class v0, Landroid/widget/RemoteViews;

    .line 175
    const-string v1, "mLandscape"

    .line 174
    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 176
    const-class v1, Landroid/widget/RemoteViews;

    .line 177
    const-string v3, "mPortrait"

    .line 176
    invoke-static {v1, p0, v3}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 178
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2e
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->prepareContextForCustomView(Landroid/content/Context;)Landroid/content/Context;

    .line 186
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, v0, p3}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->performApplyForLgeRemoteViews(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 187
    return-void
.end method
