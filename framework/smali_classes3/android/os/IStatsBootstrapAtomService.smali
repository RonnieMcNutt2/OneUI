.class public interface abstract Landroid/os/IStatsBootstrapAtomService;
.super Ljava/lang/Object;
.source "IStatsBootstrapAtomService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsBootstrapAtomService$Stub;,
        Landroid/os/IStatsBootstrapAtomService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsBootstrapAtomService"


# virtual methods
.method public abstract reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
