.class public Landroid/telephony/IBootstrapAuthenticationCallback$Default;
.super Ljava/lang/Object;
.source "IBootstrapAuthenticationCallback.java"

# interfaces
.implements Landroid/telephony/IBootstrapAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/IBootstrapAuthenticationCallback;
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAuthenticationFailure(II)V
    .registers 3
    .param p1, "token"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onKeysAvailable(I[BLjava/lang/String;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "gbaKey"    # [B
    .param p3, "btId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
