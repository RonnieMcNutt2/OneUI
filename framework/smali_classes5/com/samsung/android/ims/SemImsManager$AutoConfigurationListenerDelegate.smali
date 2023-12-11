.class Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;
.super Lcom/samsung/android/ims/SemAutoConfigListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoConfigurationListenerDelegate"
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/ims/SemAutoConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ims/SemAutoConfigurationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigurationListener;

    .line 1989
    invoke-direct {p0}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;-><init>()V

    .line 1987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mToken:Ljava/lang/String;

    .line 1990
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    .line 1991
    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;
    .registers 2

    .line 1994
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 1995
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/SemAutoConfigurationListener;

    return-object v0

    .line 1997
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAutoConfigurationCompleted(Z)V
    .registers 3
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;

    move-result-object v0

    .line 2027
    .local v0, "autoConfigurationListener":Lcom/samsung/android/ims/SemAutoConfigurationListener;
    if-eqz v0, :cond_9

    .line 2028
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onAutoConfigurationCompleted(Z)V

    .line 2030
    :cond_9
    return-void
.end method

.method public onIidTokenNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2018
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;

    move-result-object v0

    .line 2019
    .local v0, "autoConfigurationListener":Lcom/samsung/android/ims/SemAutoConfigurationListener;
    if-eqz v0, :cond_9

    .line 2020
    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onIidTokenNeeded()V

    .line 2022
    :cond_9
    return-void
.end method

.method public onMsisdnNumberNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2010
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;

    move-result-object v0

    .line 2011
    .local v0, "autoConfigurationListener":Lcom/samsung/android/ims/SemAutoConfigurationListener;
    if-eqz v0, :cond_9

    .line 2012
    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onMsisdnNumberNeeded()V

    .line 2014
    :cond_9
    return-void
.end method

.method public onVerificationCodeNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2002
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$AutoConfigurationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemAutoConfigurationListener;

    move-result-object v0

    .line 2003
    .local v0, "autoConfigurationListener":Lcom/samsung/android/ims/SemAutoConfigurationListener;
    if-eqz v0, :cond_9

    .line 2004
    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigurationListener;->onVerificationCodeNeeded()V

    .line 2006
    :cond_9
    return-void
.end method
