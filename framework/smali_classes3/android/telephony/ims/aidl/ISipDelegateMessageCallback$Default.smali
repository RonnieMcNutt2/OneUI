.class public Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Default;
.super Ljava/lang/Object;
.source "ISipDelegateMessageCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .registers 2
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public onMessageSendFailure(Ljava/lang/String;I)V
    .registers 3
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
