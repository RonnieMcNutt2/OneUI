.class public Landroid/app/IAlarmListener$Default;
.super Ljava/lang/Object;
.source "IAlarmListener.java"

# interfaces
.implements Landroid/app/IAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
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

.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/IAlarmCompleteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
