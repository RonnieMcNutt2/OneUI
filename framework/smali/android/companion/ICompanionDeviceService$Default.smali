.class public Landroid/companion/ICompanionDeviceService$Default;
.super Ljava/lang/Object;
.source "ICompanionDeviceService.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 2
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 2
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
