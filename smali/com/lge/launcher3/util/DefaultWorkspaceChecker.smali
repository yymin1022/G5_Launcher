.class public Lcom/lge/launcher3/util/DefaultWorkspaceChecker;
.super Ljava/lang/Object;
.source "DefaultWorkspaceChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Gid;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Mcc;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Mnc;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$NetworkCode;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SktMode;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Sp;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SpEnd;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SpStart;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Spn;,
        Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SprintId;
    }
.end annotation


# static fields
.field private static sCheckClassHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sGid:Ljava/lang/String;

.field private static sInitUsimInfo:Z

.field private static sMcc:Ljava/lang/String;

.field private static sMnc:Ljava/lang/String;

.field private static sSp:I

.field private static sSpn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sInitUsimInfo:Z

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sMcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sGid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()I
    .registers 1

    .prologue
    .line 129
    sget v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sSp:I

    return v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sSpn:Ljava/lang/String;

    return-object v0
.end method

.method public static destory()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 168
    sput-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sMcc:Ljava/lang/String;

    .line 169
    sput-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sMnc:Ljava/lang/String;

    .line 170
    sput-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sGid:Ljava/lang/String;

    .line 171
    sput v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sSp:I

    .line 172
    sput-boolean v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sInitUsimInfo:Z

    .line 173
    sput-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    .line 174
    return-void
.end method

.method public static getCheckClass(Ljava/lang/String;)Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;
    .registers 2

    .prologue
    .line 16
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 17
    const/4 v0, 0x0

    .line 19
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;

    goto :goto_5
.end method

.method public static init(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 132
    sget-boolean v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sInitUsimInfo:Z

    if-nez v0, :cond_36

    .line 134
    :try_start_6
    invoke-static {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGUsimInfo;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sMcc:Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sMnc:Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getGid()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sGid:Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getSpn()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sSpn:Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->getSP()I

    move-result v1

    sput v1, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sSp:I

    .line 140
    const-string v1, "init"

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGUsimInfo;->onDestroy()V
    :try_end_34
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_34} :catch_4c

    .line 145
    :goto_34
    sput-boolean v8, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sInitUsimInfo:Z

    .line 148
    :cond_36
    sget-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    if-nez v0, :cond_4b

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    .line 150
    const-class v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 151
    array-length v4, v3

    move v1, v2

    :goto_49
    if-lt v1, v4, :cond_57

    .line 165
    :cond_4b
    return-void

    .line 143
    :catch_4c
    move-exception v0

    const-string v0, "init"

    const-string v1, "NoClassDefFoundError"

    new-array v3, v2, [I

    invoke-static {v0, v1, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_34

    .line 151
    :cond_57
    aget-object v0, v3, v1

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 154
    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 155
    instance-of v6, v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;

    if-eqz v6, :cond_70

    .line 156
    sget-object v6, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->sCheckClassHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    check-cast v0, Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/InstantiationException; {:try_start_5d .. :try_end_70} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_70} :catch_96
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_70} :catch_7f

    .line 151
    :cond_70
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 159
    :catch_74
    move-exception v0

    :goto_75
    const-string v0, "CheckClass"

    const-string v5, "not found"

    new-array v6, v2, [I

    invoke-static {v0, v5, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_70

    .line 160
    :catch_7f
    move-exception v0

    .line 161
    const-string v5, "DefaultWorkspaceChecker"

    const-string v6, "NullPointerException(%s)"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v2, [I

    invoke-static {v5, v0, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_70

    .line 159
    :catch_96
    move-exception v0

    goto :goto_75
.end method
