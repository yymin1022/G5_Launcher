.class public Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;
.super Ljava/lang/Object;
.source "LGMDMEXCHANGEConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMEXCHANGEConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CalendarSyncronization:Z

.field public ContactsSyncronization:Z

.field public EXCHGSecureType:I

.field public EmailSyncronization:Z

.field public IdentityCertificateId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public SSLRequired:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public TasksSyncronization:Z

.field public admin:Landroid/content/ComponentName;

.field public allowHTMLEmail:Z

.field public allowSMIMEEncryptionAlgorithmNegotiation:I

.field public allowSMIMESoftCerts:Z

.field public attachmentsEnabled:Z

.field public certAlias:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public maxAttachmentSize:I

.field public maxCalenderAgeFilter:I

.field public maxEmailAgeFilter:I

.field public maxEmailBodyTruncationSize:I

.field public maxEmailHTMLBodyTruncationSize:I

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public requireEncryptedSMIMEMessages:Z

.field public requireEncryptionSMIMEAlgorithm:I

.field public requireSignedSMIMEMessages:Z

.field public retrieveInterval:I

.field public sEmailCertID:Ljava/lang/String;

.field public senderSignature:Ljava/lang/String;

.field public serverAddress:Ljava/lang/String;

.field public setAsDefault:I

.field public signedSMIMEAlgorithm:I

.field public smsSynchronization:Z

.field public userEmail:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public yourName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 434
    new-instance v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig$1;

    invoke-direct {v0}, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig$1;-><init>()V

    sput-object v0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EXCHGSecureType:I

    .line 115
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->ContactsSyncronization:Z

    .line 121
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CalendarSyncronization:Z

    .line 127
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EmailSyncronization:Z

    .line 133
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->TasksSyncronization:Z

    .line 139
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->smsSynchronization:Z

    .line 155
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxCalenderAgeFilter:I

    .line 172
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailAgeFilter:I

    .line 206
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->retrieveInterval:I

    .line 212
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->attachmentsEnabled:Z

    .line 218
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowHTMLEmail:Z

    .line 225
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxAttachmentSize:I

    .line 258
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailBodyTruncationSize:I

    .line 266
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailHTMLBodyTruncationSize:I

    .line 302
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->signedSMIMEAlgorithm:I

    .line 316
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptionSMIMEAlgorithm:I

    .line 326
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptedSMIMEMessages:Z

    .line 336
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireSignedSMIMEMessages:Z

    .line 347
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    .line 357
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMESoftCerts:Z

    .line 448
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EXCHGSecureType:I

    .line 115
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->ContactsSyncronization:Z

    .line 121
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CalendarSyncronization:Z

    .line 127
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EmailSyncronization:Z

    .line 133
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->TasksSyncronization:Z

    .line 139
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->smsSynchronization:Z

    .line 155
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxCalenderAgeFilter:I

    .line 172
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailAgeFilter:I

    .line 206
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->retrieveInterval:I

    .line 212
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->attachmentsEnabled:Z

    .line 218
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowHTMLEmail:Z

    .line 225
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxAttachmentSize:I

    .line 258
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailBodyTruncationSize:I

    .line 266
    iput v3, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailHTMLBodyTruncationSize:I

    .line 302
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->signedSMIMEAlgorithm:I

    .line 316
    iput v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptionSMIMEAlgorithm:I

    .line 326
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptedSMIMEMessages:Z

    .line 336
    iput-boolean v2, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireSignedSMIMEMessages:Z

    .line 347
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    .line 357
    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMESoftCerts:Z

    .line 456
    invoke-virtual {p0, p1}, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 455
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->name:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userEmail:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->serverAddress:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->domain:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EXCHGSecureType:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userName:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->password:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->IdentityCertificateId:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxCalenderAgeFilter:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailAgeFilter:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->retrieveInterval:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxAttachmentSize:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailBodyTruncationSize:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailHTMLBodyTruncationSize:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->signedSMIMEAlgorithm:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptionSMIMEAlgorithm:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->senderSignature:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->yourName:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->setAsDefault:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->sEmailCertID:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->certAlias:Ljava/lang/String;

    .line 486
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->admin:Landroid/content/ComponentName;

    .line 488
    const/16 v1, 0xb

    new-array v0, v1, [Z

    .line 489
    .local v0, "booleanArray":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 491
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->SSLRequired:Z

    .line 492
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->ContactsSyncronization:Z

    .line 493
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CalendarSyncronization:Z

    .line 494
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EmailSyncronization:Z

    .line 495
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->TasksSyncronization:Z

    .line 496
    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->smsSynchronization:Z

    .line 497
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->attachmentsEnabled:Z

    .line 498
    const/4 v1, 0x7

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowHTMLEmail:Z

    .line 499
    const/16 v1, 0x8

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptedSMIMEMessages:Z

    .line 500
    const/16 v1, 0x9

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireSignedSMIMEMessages:Z

    .line 501
    const/16 v1, 0xa

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMESoftCerts:Z

    .line 463
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v0, "value":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "---------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string/jumbo v1, "name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    const-string/jumbo v1, "userEmail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v1, "serverAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v1, "domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    const-string/jumbo v1, "SSLRequired : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->SSLRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v1, "EXCHGSecureType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EXCHGSecureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v1, "userName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v1, "IdentityCertificateId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->IdentityCertificateId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    const-string/jumbo v1, "ContactsSyncronization : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->ContactsSyncronization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    const-string/jumbo v1, "CalendarSyncronization : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CalendarSyncronization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v1, "EmailSyncronization : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EmailSyncronization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    const-string/jumbo v1, "TasksSyncronization : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->TasksSyncronization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    const-string/jumbo v1, "smsSynchronization : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->smsSynchronization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    const-string/jumbo v1, "maxCalenderAgeFilter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxCalenderAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    const-string/jumbo v1, "maxEmailAgeFilter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    const-string/jumbo v1, "retrieveInterval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->retrieveInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    const-string/jumbo v1, "attachmentsEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->attachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    const-string/jumbo v1, "allowHTMLEmail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v1, "maxAttachmentSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    const-string/jumbo v1, "maxEmailBodyTruncationSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    const-string/jumbo v1, "maxEmailHTMLBodyTruncationSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailHTMLBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    const-string/jumbo v1, "senderSignature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->senderSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    const-string/jumbo v1, "yourName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->yourName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    const-string/jumbo v1, "setAsDefault : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->setAsDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    const-string/jumbo v1, "signedSMIMEAlgorithm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->signedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    const-string/jumbo v1, "requireEncryptionSMIMEAlgorithm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    const-string/jumbo v1, "requireEncryptedSMIMEMessages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    const-string/jumbo v1, "requireSignedSMIMEMessages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    const-string/jumbo v1, "allowSMIMEEncryptionAlgorithmNegotiation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    const-string/jumbo v1, "allowSMIMESoftCerts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    const-string/jumbo v1, "sEmailCertID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->sEmailCertID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v1, "certAlias : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->certAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const-string/jumbo v1, "admin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1ee

    .line 615
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->admin:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :goto_1e0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v1, "---------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 617
    :cond_1ee
    const-string/jumbo v1, "admin is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userEmail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->serverAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EXCHGSecureType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->IdentityCertificateId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxCalenderAgeFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailAgeFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->retrieveInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxAttachmentSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailBodyTruncationSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->maxEmailHTMLBodyTruncationSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->signedSMIMEAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptionSMIMEAlgorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->senderSignature:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->yourName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->setAsDefault:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->sEmailCertID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->certAlias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->admin:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 415
    const/16 v1, 0xb

    new-array v0, v1, [Z

    .line 416
    .local v0, "booleanArray":[Z
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->SSLRequired:Z

    aput-boolean v1, v0, v2

    .line 417
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->ContactsSyncronization:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    .line 418
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->CalendarSyncronization:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 419
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->EmailSyncronization:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    .line 420
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->TasksSyncronization:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    .line 421
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->smsSynchronization:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    .line 422
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->attachmentsEnabled:Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    .line 423
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowHTMLEmail:Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    .line 424
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireEncryptedSMIMEMessages:Z

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    .line 425
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->requireSignedSMIMEMessages:Z

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    .line 426
    iget-boolean v1, p0, Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;->allowSMIMESoftCerts:Z

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    .line 427
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 390
    return-void
.end method
