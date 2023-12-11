.class public interface abstract Landroid/os/IWakeLockCallback;
.super Ljava/lang/Object;
.source "IWakeLockCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IWakeLockCallback$Stub;,
        Landroid/os/IWakeLockCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IWakeLockCallback"


# virtual methods
.method public abstract onStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
