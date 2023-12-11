.class public interface abstract Lcom/samsung/android/app/usage/IUsageStatsWatcher;
.super Ljava/lang/Object;
.source "IUsageStatsWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;,
        Lcom/samsung/android/app/usage/IUsageStatsWatcher$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.usage.IUsageStatsWatcher"


# virtual methods
.method public abstract notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
