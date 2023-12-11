.class public interface abstract Landroid/os/ISemHcmManager;
.super Ljava/lang/Object;
.source "ISemHcmManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISemHcmManager$Stub;,
        Landroid/os/ISemHcmManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISemHcmManager"


# virtual methods
.method public abstract getHcmEnable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
