.class public interface abstract Landroid/speech/IRecognitionSupportCallback;
.super Ljava/lang/Object;
.source "IRecognitionSupportCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionSupportCallback$Stub;,
        Landroid/speech/IRecognitionSupportCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionSupportCallback"


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSupportResult(Landroid/speech/RecognitionSupport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
