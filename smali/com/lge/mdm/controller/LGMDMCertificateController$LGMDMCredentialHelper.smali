.class Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;
.super Ljava/lang/Object;
.source "LGMDMCertificateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCertificateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LGMDMCredentialHelper"
.end annotation


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final CERTIFICATE:Ljava/lang/String; = "CERT"

.field static final CERT_NAME_KEY:Ljava/lang/String; = "name"

.field public static final PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field private static final TAG:Ljava/lang/String; = "LGMDMCredentialHelper"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final VPN:Ljava/lang/String; = "VPN_"

.field public static final WIFI:Ljava/lang/String; = "WIFI_"


# instance fields
.field private final mBundle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMCertificateController;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->this$0:Lcom/lge/mdm/controller/LGMDMCertificateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 703
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    .line 706
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    .line 709
    if-nez p2, :cond_1b

    .line 710
    return-void

    .line 713
    :cond_1b
    const-string/jumbo v4, "name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 715
    if-eqz v3, :cond_2c

    .line 716
    iput-object v3, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    .line 718
    :cond_2c
    const-string/jumbo v4, "LGMDMCredentialHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "# extras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 720
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 721
    .local v0, "bytes":[B
    const-string/jumbo v5, "LGMDMCredentialHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_90

    const/4 v4, -0x1

    :goto_7f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v4, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 721
    :cond_90
    array-length v4, v0

    goto :goto_7f

    .line 724
    .end local v0    # "bytes":[B
    .end local v1    # "key":Ljava/lang/String;
    :cond_92
    const-string/jumbo v4, "CERT"

    invoke-virtual {p0, v4}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->parseCert([B)V

    .line 708
    return-void
.end method

.method private extractPkcs12Internal(Ljava/lang/String;)Z
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 877
    const-string/jumbo v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 878
    .local v4, "keystore":Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 879
    .local v5, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    const-string/jumbo v6, "PKCS12"

    invoke-virtual {p0, v6}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v0

    .line 880
    .local v0, "Datacheck":[B
    if-eqz v0, :cond_1c

    if-nez v4, :cond_1d

    .line 881
    :cond_1c
    return v8

    .line 883
    :cond_1d
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 889
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 890
    .local v2, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_34

    .line 891
    return v8

    .line 894
    :cond_34
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 895
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 896
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 897
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    if-nez v3, :cond_5c

    .line 898
    const-string/jumbo v6, "LGMDMCredentialHelper"

    const-string/jumbo v7, " entry is null"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :goto_4f
    instance-of v6, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v6, :cond_34

    .line 904
    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    .line 905
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z

    move-result v6

    return v6

    .line 900
    .restart local v3    # "entry":Ljava/security/KeyStore$Entry;
    :cond_5c
    const-string/jumbo v6, "LGMDMCredentialHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "extracted alias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 908
    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    :cond_86
    const/4 v6, 0x1

    return v6
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .registers 10
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;

    .prologue
    monitor-enter p0

    .line 912
    :try_start_1
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    .line 913
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    iput-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 914
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 915
    .local v4, "certs":[Ljava/security/cert/Certificate;
    const-string/jumbo v5, "LGMDMCredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "# certs extracted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    .line 917
    .local v2, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v5, 0x0

    array-length v6, v4

    :goto_38
    if-ge v5, v6, :cond_4c

    aget-object v1, v4, v5

    .line 918
    .local v1, "c":Ljava/security/cert/Certificate;
    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 919
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v3}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 920
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 923
    .end local v1    # "c":Ljava/security/cert/Certificate;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4c
    const-string/jumbo v5, "LGMDMCredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "# ca certs extracted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6f

    .line 925
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .end local v2    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "certs":[Ljava/security/cert/Certificate;
    :catchall_6f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 757
    :try_start_1
    const-string/jumbo v4, "2.5.29.19"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 759
    .local v0, "basicConstraints":[B
    if-nez v0, :cond_b

    .line 760
    return v5

    .line 763
    :cond_b
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 764
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    .line 765
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 766
    .local v3, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e

    move-result v4

    return v4

    .line 767
    .end local v0    # "basicConstraints":[B
    .end local v3    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2e
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    return v5
.end method

.method private parseCert([B)V
    .registers 8
    .param p1, "bytes"    # [B

    .prologue
    .line 732
    if-nez p1, :cond_3

    .line 733
    return-void

    .line 737
    :cond_3
    :try_start_3
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 738
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    if-eqz v1, :cond_2b

    .line 740
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 739
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 741
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 742
    const-string/jumbo v3, "LGMDMCredentialHelper"

    const-string/jumbo v4, "got a CA cert"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_2b
    :goto_2b
    return-void

    .line 745
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_2c
    const-string/jumbo v3, "LGMDMCredentialHelper"

    const-string/jumbo v4, "got a user cert"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_37
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_37} :catch_38

    goto :goto_2b

    .line 749
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_38
    move-exception v2

    .line 750
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v3, "LGMDMCredentialHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseCert(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method


# virtual methods
.method containsAnyRawData()Z
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method createSystemInstall(I)Landroid/os/Bundle;
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 837
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_5
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v5, :cond_31

    .line 838
    const-string/jumbo v5, "user_private_key_name"

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 838
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string/jumbo v5, "user_private_key_data"

    .line 841
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v6}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    .line 840
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 843
    :cond_31
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_63

    .line 844
    const-string/jumbo v5, "user_certificate_name"

    .line 845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 844
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v5, "user_certificate_data"

    .line 847
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/security/cert/Certificate;

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    .line 846
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 849
    :cond_63
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 850
    const-string/jumbo v5, "ca_certificates_name"

    .line 851
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 850
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    .line 853
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    .line 852
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 854
    .local v1, "caCerts":[Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    .line 856
    .local v2, "convertData":[B
    const-string/jumbo v5, "ca_certificates_data"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a1} :catch_a9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_a1} :catch_a2

    .line 863
    .end local v1    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v2    # "convertData":[B
    :cond_a1
    return-object v0

    .line 860
    :catch_a2
    move-exception v4

    .line 861
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 858
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_a9
    move-exception v3

    .line 859
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method extractPkcs12(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 868
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->extractPkcs12Internal(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 869
    :catch_5
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LGMDMCredentialHelper"

    const-string/jumbo v2, "extractPkcs12(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    const/4 v1, 0x0

    return v1
.end method

.method getData(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 822
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 823
    const/4 v1, 0x0

    return-object v1

    .line 826
    :cond_b
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 827
    .local v0, "index":I
    if-lez v0, :cond_1e

    .line 828
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    .line 830
    :cond_1e
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    return-object v1
.end method

.method getUserCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method hasAnyForSystemInstall()Z
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->hasCaCerts()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method hasCaCerts()Z
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method hasKeyPair()Z
    .registers 3

    .prologue
    .line 777
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string/jumbo v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string/jumbo v1, "PKEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method hasPkcs12KeyStore()Z
    .registers 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string/jumbo v1, "PKCS12"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasUserCertificate()Z
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method installCaCertsToKeyChain(Landroid/security/IKeyChainService;)Z
    .registers 10
    .param p1, "keyChainService"    # Landroid/security/IKeyChainService;

    .prologue
    .line 929
    iget-object v5, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "caCert$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 930
    .local v1, "caCert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 932
    .local v0, "bytes":[B
    :try_start_13
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_16
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_13 .. :try_end_16} :catch_43

    move-result-object v0

    .line 936
    .local v0, "bytes":[B
    if-eqz v0, :cond_6

    .line 938
    :try_start_19
    const-string/jumbo v5, "LGMDMCredentialHelper"

    const-string/jumbo v6, "start KeyChainService::installCaCertificate"

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-interface {p1, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_25} :catch_26

    goto :goto_6

    .line 940
    :catch_26
    move-exception v3

    .line 941
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "LGMDMCredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "installCaCertsToKeyChain(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v5, 0x0

    return v5

    .line 933
    .end local v3    # "e":Landroid/os/RemoteException;
    .local v0, "bytes":[B
    :catch_43
    move-exception v4

    .line 934
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 946
    .end local v0    # "bytes":[B
    .end local v1    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_4a
    const/4 v5, 0x1

    return v5
.end method

.method putPkcs12Data([B)V
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 814
    iget-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string/jumbo v1, "PKCS12"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 818
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mName:Ljava/lang/String;

    .line 817
    return-void
.end method

.method setPrivateKey([B)V
    .registers 7
    .param p1, "bytes"    # [B

    .prologue
    .line 794
    :try_start_0
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 795
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    if-eqz v1, :cond_14

    .line 796
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mdm/controller/LGMDMCertificateController$LGMDMCredentialHelper;->mUserKey:Ljava/security/PrivateKey;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 792
    :cond_14
    return-void

    .line 798
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_15
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LGMDMCredentialHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPrivateKey(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
