.class public interface abstract Landroid/telephony/ims/SipDelegateConnection;
.super Ljava/lang/Object;
.source "SipDelegateConnection.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract cleanupSession(Ljava/lang/String;)V
.end method

.method public abstract notifyMessageReceiveError(Ljava/lang/String;I)V
.end method

.method public abstract notifyMessageReceived(Ljava/lang/String;)V
.end method

.method public abstract sendMessage(Landroid/telephony/ims/SipMessage;J)V
.end method
