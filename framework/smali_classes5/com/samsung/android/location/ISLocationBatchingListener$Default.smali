.class public Lcom/samsung/android/location/ISLocationBatchingListener$Default;
.super Ljava/lang/Object;
.source "ISLocationBatchingListener.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationBatchingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationBatchingListener;
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

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationAvailable([Landroid/location/Location;Z)V
    .registers 3
    .param p1, "locations"    # [Landroid/location/Location;
    .param p2, "flushCompleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
