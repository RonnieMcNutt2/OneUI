.class public interface abstract Landroid/service/assist/classification/IFieldClassificationService;
.super Ljava/lang/Object;
.source "IFieldClassificationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationService$Stub;,
        Landroid/service/assist/classification/IFieldClassificationService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.assist.classification.IFieldClassificationService"


# virtual methods
.method public abstract onConnected(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
