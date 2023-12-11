.class public Landroid/hardware/scontext/SContextWakeUpVoice;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextWakeUpVoice.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextWakeUpVoice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoice$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWakeUpVoice$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextWakeUpVoice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoice;->mContext:Landroid/os/Bundle;

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 105
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextWakeUpVoice;->readFromParcel(Landroid/os/Parcel;)V

    .line 106
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoice;->mContext:Landroid/os/Bundle;

    .line 161
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoice;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoice;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 136
    iput-object p1, p0, Landroid/hardware/scontext/SContextWakeUpVoice;->mContext:Landroid/os/Bundle;

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoice;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method
