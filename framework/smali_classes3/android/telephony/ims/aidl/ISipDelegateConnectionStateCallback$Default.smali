.class public Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Default;
.super Ljava/lang/Object;
.source "ISipDelegateConnectionStateCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 2
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/ISipDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onDestroyed(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .registers 3
    .param p1, "registrationState"    # Landroid/telephony/ims/DelegateRegistrationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    .local p2, "deniedFeatureTags":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/FeatureTagState;>;"
    return-void
.end method

.method public onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 2
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateImsConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
