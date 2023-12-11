.class public Landroid/hardware/scontext/SContextInactiveTimer;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextInactiveTimer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextInactiveTimer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextInactiveTimer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    .line 101
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 107
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextInactiveTimer;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    .line 172
    return-void
.end method


# virtual methods
.method public getDuration()I
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    const-string v1, "InactiveTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    const-string v1, "InactiveStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isTimeOutExpired()Z
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    const-string v1, "IsTimeOut"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 147
    iput-object p1, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    iget-object v0, p0, Landroid/hardware/scontext/SContextInactiveTimer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method
