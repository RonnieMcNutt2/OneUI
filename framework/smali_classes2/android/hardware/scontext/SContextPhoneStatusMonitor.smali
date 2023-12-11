.class public Landroid/hardware/scontext/SContextPhoneStatusMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPhoneStatusMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextPhoneStatusMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 216
    new-instance v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 123
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 210
    return-void
.end method


# virtual methods
.method public getLcdDirection()I
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "lcddirect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProximity()I
    .registers 3

    .line 147
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "embower"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 175
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isInSuroundingEnvironment()Z
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "lcdOffRecommend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 185
    iput-object p1, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method
