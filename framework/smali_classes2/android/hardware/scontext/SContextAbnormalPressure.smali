.class public Landroid/hardware/scontext/SContextAbnormalPressure;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAbnormalPressure.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextAbnormalPressure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 232
    new-instance v0, Landroid/hardware/scontext/SContextAbnormalPressure$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAbnormalPressure$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAbnormalPressure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 131
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAbnormalPressure;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 227
    return-void
.end method


# virtual methods
.method public getAccX()F
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v1, "xaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAccY()F
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v1, "yaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAccZ()F
    .registers 3

    .line 175
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v1, "zaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPressure()F
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v1, "barometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 190
    iput-object p1, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 191
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method
