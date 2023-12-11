.class public interface abstract Landroid/service/resumeonreboot/IResumeOnRebootService;
.super Ljava/lang/Object;
.source "IResumeOnRebootService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resumeonreboot/IResumeOnRebootService$Stub;,
        Landroid/service/resumeonreboot/IResumeOnRebootService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.resumeonreboot.IResumeOnRebootService"


# virtual methods
.method public abstract unwrap([BLandroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract wrapSecret([BJLandroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
