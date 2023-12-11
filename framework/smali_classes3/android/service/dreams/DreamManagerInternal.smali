.class public abstract Landroid/service/dreams/DreamManagerInternal;
.super Ljava/lang/Object;
.source "DreamManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canStartDreaming(Z)Z
.end method

.method public abstract isDreaming()Z
.end method

.method public abstract registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
.end method

.method public abstract requestDream()V
.end method

.method public abstract startDream(ZLjava/lang/String;)V
.end method

.method public abstract stopDream(ZLjava/lang/String;)V
.end method

.method public abstract unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
.end method
