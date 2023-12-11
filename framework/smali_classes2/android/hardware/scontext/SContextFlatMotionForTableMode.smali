.class public Landroid/hardware/scontext/SContextFlatMotionForTableMode;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextFlatMotionForTableMode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextFlatMotionForTableMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableMode$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableMode$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->mContext:Landroid/os/Bundle;

    .line 98
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 104
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->readFromParcel(Landroid/os/Parcel;)V

    .line 105
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->mContext:Landroid/os/Bundle;

    .line 150
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 125
    iput-object p1, p0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->mContext:Landroid/os/Bundle;

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    iget-object v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method
