.class public interface abstract Lcom/samsung/android/knox/IBasicCommand;
.super Ljava/lang/Object;
.source "IBasicCommand.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IBasicCommand$Stub;,
        Lcom/samsung/android/knox/IBasicCommand$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IBasicCommand"


# virtual methods
.method public abstract sendCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCaller(Lcom/samsung/android/knox/IBasicCommand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
