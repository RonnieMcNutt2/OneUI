.class public interface abstract Lcom/samsung/android/sepunion/IGalaxyRegistryService;
.super Ljava/lang/Object;
.source "IGalaxyRegistryService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/IGalaxyRegistryService$Stub;,
        Lcom/samsung/android/sepunion/IGalaxyRegistryService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sepunion.IGalaxyRegistryService"


# virtual methods
.method public abstract registerListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
