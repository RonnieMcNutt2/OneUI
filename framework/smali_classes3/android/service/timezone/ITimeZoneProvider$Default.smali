.class public Landroid/service/timezone/ITimeZoneProvider$Default;
.super Ljava/lang/Object;
.source "ITimeZoneProvider.java"

# interfaces
.implements Landroid/service/timezone/ITimeZoneProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/ITimeZoneProvider;
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

.method public startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 6
    .param p1, "manager"    # Landroid/service/timezone/ITimeZoneProviderManager;
    .param p2, "initializationTimeoutMillis"    # J
    .param p4, "eventFilteringAgeThresholdMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public stopUpdates()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
