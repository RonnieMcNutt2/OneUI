.class public abstract Landroid/rotationresolver/RotationResolverInternal;
.super Ljava/lang/Object;
.source "RotationResolverInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isRotationResolverSupported()Z
.end method

.method public abstract resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
.end method
