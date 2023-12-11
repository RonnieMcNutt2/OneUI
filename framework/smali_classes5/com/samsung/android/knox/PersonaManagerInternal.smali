.class public abstract Lcom/samsung/android/knox/PersonaManagerInternal;
.super Ljava/lang/Object;
.source "PersonaManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doKeyguardTimeout()V
.end method

.method public abstract getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;
.end method

.method public abstract getECName(I)Ljava/lang/String;
.end method

.method public abstract isKnoxId(I)Z
.end method

.method public abstract onDeviceLockedChanged(I)V
.end method

.method public abstract shouldConfirmCredentials(I)Z
.end method
