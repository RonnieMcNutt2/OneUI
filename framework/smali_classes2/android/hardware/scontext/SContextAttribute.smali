.class public Landroid/hardware/scontext/SContextAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SContextAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 2

    .line 68
    invoke-super {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v0

    return v0
.end method
