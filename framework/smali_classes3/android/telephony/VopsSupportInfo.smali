.class public abstract Landroid/telephony/VopsSupportInfo;
.super Ljava/lang/Object;
.source "VopsSupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/telephony/VopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/VopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/VopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract isEmergencyServiceFallbackSupported()Z
.end method

.method public abstract isEmergencyServiceSupported()Z
.end method

.method public abstract isVopsSupported()Z
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "type"    # I

    .line 74
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
