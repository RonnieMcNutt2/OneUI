.class public interface abstract Landroid/tracing/ITracingServiceProxy;
.super Ljava/lang/Object;
.source "ITracingServiceProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tracing/ITracingServiceProxy$Stub;,
        Landroid/tracing/ITracingServiceProxy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.tracing.ITracingServiceProxy"


# virtual methods
.method public abstract notifyTraceSessionEnded(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportTrace(Landroid/tracing/TraceReportParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
