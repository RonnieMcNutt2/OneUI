.class public Landroid/hardware/scontext/SContextEventContext;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SContextEventContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method
