.class public interface abstract Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;
.super Ljava/lang/Object;
.source "ILGMDMEmailConfigStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeleteEXCHANGEConfig(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeleteEXCHANGEConfigInternal(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeleteEmailCertConfig(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeletePOPIMAPConfig(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeletePOPIMAPConfigInternal(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
