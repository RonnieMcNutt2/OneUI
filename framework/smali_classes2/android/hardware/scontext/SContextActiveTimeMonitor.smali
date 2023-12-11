.class public Landroid/hardware/scontext/SContextActiveTimeMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActiveTimeMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextActiveTimeMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 248
    new-instance v0, Landroid/hardware/scontext/SContextActiveTimeMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActiveTimeMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActiveTimeMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActiveTimeMonitor;->mContext:Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 155
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 157
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActiveTimeMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActiveTimeMonitor;->mContext:Landroid/os/Bundle;

    .line 237
    return-void
.end method


# virtual methods
.method public getDuration()I
    .registers 3

    .line 174
    iget-object v0, p0, Landroid/hardware/scontext/SContextActiveTimeMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "ActiveTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 191
    iput-object p1, p0, Landroid/hardware/scontext/SContextActiveTimeMonitor;->mContext:Landroid/os/Bundle;

    .line 193
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 217
    iget-object v0, p0, Landroid/hardware/scontext/SContextActiveTimeMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 219
    return-void
.end method
