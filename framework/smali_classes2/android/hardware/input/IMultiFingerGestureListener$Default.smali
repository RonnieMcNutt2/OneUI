.class public Landroid/hardware/input/IMultiFingerGestureListener$Default;
.super Ljava/lang/Object;
.source "IMultiFingerGestureListener.java"

# interfaces
.implements Landroid/hardware/input/IMultiFingerGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IMultiFingerGestureListener;
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

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMultiFingerGesture(II)V
    .registers 3
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
