.class public interface abstract Lcom/android/internal/widget/IUpdateVerifierInterface;
.super Ljava/lang/Object;
.source "IUpdateVerifierInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IUpdateVerifierInterface$Stub;,
        Lcom/android/internal/widget/IUpdateVerifierInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IUpdateVerifierInterface"


# virtual methods
.method public abstract requestSaGuid(Lcom/android/internal/widget/IUpdateVerifierCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateVerifier([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
