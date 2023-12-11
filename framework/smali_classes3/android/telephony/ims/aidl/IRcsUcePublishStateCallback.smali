.class public interface abstract Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
.super Ljava/lang/Object;
.source "IRcsUcePublishStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;,
        Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IRcsUcePublishStateCallback"


# virtual methods
.method public abstract onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
