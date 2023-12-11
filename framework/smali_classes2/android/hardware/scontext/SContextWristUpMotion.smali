.class public Landroid/hardware/scontext/SContextWristUpMotion;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextWristUpMotion.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextWristUpMotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/hardware/scontext/SContextWristUpMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWristUpMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextWristUpMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextWristUpMotion;->mContext:Landroid/os/Bundle;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextWristUpMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextWristUpMotion;->mContext:Landroid/os/Bundle;

    .line 90
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/hardware/scontext/SContextWristUpMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 65
    iput-object p1, p0, Landroid/hardware/scontext/SContextWristUpMotion;->mContext:Landroid/os/Bundle;

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroid/hardware/scontext/SContextWristUpMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
