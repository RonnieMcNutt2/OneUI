.class public Lcom/android/internal/telephony/IDomainSelectionServiceController$Default;
.super Ljava/lang/Object;
.source "IDomainSelectionServiceController.java"

# interfaces
.implements Lcom/android/internal/telephony/IDomainSelectionServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IDomainSelectionServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    .registers 3
    .param p1, "attr"    # Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .param p2, "callback"    # Lcom/android/internal/telephony/ITransportSelectorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public updateBarringInfo(IILandroid/telephony/BarringInfo;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subId"    # I
    .param p3, "info"    # Landroid/telephony/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public updateServiceState(IILandroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subId"    # I
    .param p3, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
